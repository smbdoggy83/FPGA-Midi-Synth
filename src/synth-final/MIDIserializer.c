#include <stdio.h> //for printf() and other functionalities
#include <stdlib.h> //for exit()
#include <stdint.h> //for uint32_t
#include <fcntl.h> //for constants O_RDWR|O_SYNC used in opening serial interface
#include <signal.h> //handles CTRL+C
#include <sys/mman.h> //for mmap() and munmap()
//#include "hps_0.h" //Platform design peripheral description
#define REG_BASE 0xff200000 //LW H2F Bride Base Address
#define REG_SPAN 0x00200000 //LW H2F Bridge Span

#define AUDIO_0_BASE 0x00000010

				// need to send data to AUDIO_0_BASE
	void *base;
	uint32_t *audio_0;
	uint32_t data = 9454944;
	int fd;
	
void SendCommand(uint32_t addr, uint32_t data) {    // MIDI is 24-bit word (3x 8-bit words) but this should work
    volatile unsigned char *dest = (unsigned char *)addr;
    for(int i=23; i>=0; --i) {
        *dest = (data & 0x8000) >> 31;
        data <<=1;
        }
    }
	
void handler(int signo) { //Used to free the mapped resource upon exit()
	*audio_0;
	 munmap(base, REG_SPAN);
	 close(fd);
	 exit(0);
}

int main() {
	
 	
	 fd=open("/dev/mem", O_RDWR|O_SYNC); //try and open the entire memory space
	 
	 if(fd<0) {
		 printf("Can't open memory\n");
		 return -1;
	 }
	 
	 base=mmap(NULL, REG_SPAN, PROT_READ|PROT_WRITE, MAP_SHARED, fd, REG_BASE); //map the lightweight bridge
	 
	 if(base==MAP_FAILED) {
		 printf("Can't map to memory\n");
		 close(fd);
		 return -1;
	 }
	 
	 audio_0=(uint32_t*)(base+AUDIO_0_BASE); //peripheral exists at the base address plus the specific offse
	  
	 signal(SIGINT, handler); //handles CTRL+C

	
     
   	
 
    while(1)
    {
         
         //clear output buffer in gcc
        fflush(stdout);
    
	SendCommand(*audio_0, data);

 
    }
}
