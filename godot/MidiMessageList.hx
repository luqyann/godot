// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.MidiMessageList")
@:csNative
extern enum MidiMessageList {
	/**		
		MIDI note OFF message. See the documentation of `godot.InputEventMIDI` for information of how to use MIDI inputs.
	**/
	NoteOff;

	/**		
		MIDI note ON message. See the documentation of `godot.InputEventMIDI` for information of how to use MIDI inputs.
	**/
	NoteOn;

	/**		
		MIDI aftertouch message. This message is most often sent by pressing down on the key after it "bottoms out".
	**/
	Aftertouch;

	/**		
		MIDI control change message. This message is sent when a controller value changes. Controllers include devices such as pedals and levers.
	**/
	ControlChange;

	/**		
		MIDI program change message. This message sent when the program patch number changes.
	**/
	ProgramChange;

	/**		
		MIDI channel pressure message. This message is most often sent by pressing down on the key after it "bottoms out". This message is different from polyphonic after-touch as it indicates the highest pressure across all keys.
	**/
	ChannelPressure;

	/**		
		MIDI pitch bend message. This message is sent to indicate a change in the pitch bender (wheel or lever, typically).
	**/
	PitchBend;

	/**		
		MIDI system exclusive message. This has behavior exclusive to the device you're receiving input from. Getting this data is not implemented in Godot.
	**/
	SystemExclusive;

	/**		
		MIDI quarter frame message. Contains timing information that is used to synchronize MIDI devices. Getting this data is not implemented in Godot.
	**/
	QuarterFrame;

	/**		
		MIDI song position pointer message. Gives the number of 16th notes since the start of the song. Getting this data is not implemented in Godot.
	**/
	SongPositionPointer;

	/**		
		MIDI song select message. Specifies which sequence or song is to be played. Getting this data is not implemented in Godot.
	**/
	SongSelect;

	/**		
		MIDI tune request message. Upon receiving a tune request, all analog synthesizers should tune their oscillators.
	**/
	TuneRequest;

	/**		
		MIDI timing clock message. Sent 24 times per quarter note when synchronization is required.
	**/
	TimingClock;

	/**		
		MIDI start message. Start the current sequence playing. This message will be followed with Timing Clocks.
	**/
	Start;

	/**		
		MIDI continue message. Continue at the point the sequence was stopped.
	**/
	Continue;

	/**		
		MIDI stop message. Stop the current sequence.
	**/
	Stop;

	/**		
		MIDI active sensing message. This message is intended to be sent repeatedly to tell the receiver that a connection is alive.
	**/
	ActiveSensing;

	/**		
		MIDI system reset message. Reset all receivers in the system to power-up status. It should not be sent on power-up itself.
	**/
	SystemReset;
}
