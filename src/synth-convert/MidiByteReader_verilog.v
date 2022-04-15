module MidiByteReader_verilog(
	input CLOCK_50,
	input MIDI_RX,
	output reg isByteAvailable = 0,
	output reg [7:0] byteValue = 0
);

localparam
	midiTicks = 12'd1600,  // 50,000,000 / 31,250 (DE0 Nano clock / MIDI clock); = 1600 
									// 1600Hz = 625000ns = 625 us = 0.625ms
	debounceTicks = 8'd10;

localparam
	stateWaitingForSignal = 8'd0,
	stateSignalAvailable = 8'd1,
	stateByteComplete = 8'd2;

reg [7:0] midiState = stateWaitingForSignal;
reg [7:0] bitNumber = 0;
reg [11:0] midiCount = 0;
reg [7:0] debounceCountDown = debounceTicks;

always @(posedge CLOCK_50)
begin
	case (midiState)
		stateWaitingForSignal: // starts here
			begin
				isByteAvailable <= 1'b0; // No bytes available
			
				if (MIDI_RX == 1'b0) // If a 0 is detected?
					begin
						debounceCountDown <= debounceCountDown - 1'b1;
						
						if (debounceCountDown == 1'b0) //once the debounce countdown is done (can just comment this out)
							begin
								debounceCountDown <= debounceTicks; //reset it
								midiState <= stateSignalAvailable; //declare that "there is some kind of signal"
								midiCount <= 1'b0; //reset everything we will need
								bitNumber <= 1'b0;
								byteValue <= 1'b0;
							end
					end
				else // if a 1 is detected
					debounceCountDown <= debounceTicks;
			end
		stateSignalAvailable: // some signal is detected
			begin
				midiCount <= midiCount + 1'b1; // increment the midi count
			
				if (midiCount == midiTicks) //once a bit has been present for long enough
					begin
						midiCount <= 1'b0; //reset the count (prepares it for next note)
					
						bitNumber <= bitNumber + 1'b1;	//increment bit number (used for multiplication / strength of signal)

						if (MIDI_RX == 1'b1)					// if the signal is a 1, shift byte value?
							byteValue <= byteValue | (1'b1 << bitNumber);
		
						if (bitNumber == 8'd7)
							midiState <= stateByteComplete;					
					end
			end
		stateByteComplete:
			begin
				midiCount <= midiCount + 1'b1;
			
				if (midiCount == midiTicks)
					begin
						isByteAvailable <= 1'b1;				
						midiState <= stateWaitingForSignal;
					end			
			end
	endcase
end

endmodule
