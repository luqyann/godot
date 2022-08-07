// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
InputEventMIDI allows receiving input events from MIDI devices such as a piano. MIDI stands for Musical Instrument Digital Interface.

MIDI signals can be sent over a 5-pin MIDI connector or over USB, if your device supports both be sure to check the settings in the device to see which output it's using.

To receive input events from MIDI devices, you need to call `godot.OS.openMidiInputs`. You can check which devices are detected using `godot.OS.getConnectedMidiInputs`.

Note that Godot does not currently support MIDI output, so there is no way to emit MIDI signals from Godot. Only MIDI input works.
**/
@:libType
@:csNative
@:native("Godot.InputEventMIDI")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMIDI extends godot.InputEvent {
	/**		
		If the message is `MIDI_MESSAGE_CONTROL_CHANGE`, this indicates the controller value, otherwise this is zero. Controllers include devices such as pedals and levers.
	**/
	@:native("ControllerValue")
	public var controllerValue:Int;

	/**		
		If the message is `MIDI_MESSAGE_CONTROL_CHANGE`, this indicates the controller number, otherwise this is zero. Controllers include devices such as pedals and levers.
	**/
	@:native("ControllerNumber")
	public var controllerNumber:Int;

	/**		
		The pressure of the MIDI signal. This value ranges from 0 to 127. For many devices, this value is always zero.
	**/
	@:native("Pressure")
	public var pressure:Int;

	/**		
		The instrument of this input event. This value ranges from 0 to 127. Refer to the instrument list on the General MIDI wikipedia article to see a list of instruments, except that this value is 0-index, so subtract one from every number on that chart. A standard piano will have an instrument number of 0.
	**/
	@:native("Instrument")
	public var instrument:Int;

	/**		
		The velocity of the MIDI signal. This value ranges from 0 to 127. For a piano, this corresponds to how quickly the key was pressed, and is rarely above about 110 in practice.
	**/
	@:native("Velocity")
	public var velocity:Int;

	/**		
		The pitch index number of this MIDI signal. This value ranges from 0 to 127. On a piano, middle C is 60, and A440 is 69, see the "MIDI note" column of the piano key frequency chart on Wikipedia for more information.
	**/
	@:native("Pitch")
	public var pitch:Int;

	/**		
		Returns a value indicating the type of message for this MIDI signal. This is a member of the `godot.MidiMessageList` enum.
		
		For MIDI messages between 0x80 and 0xEF, only the left half of the bits are returned as this value, as the other part is the channel (ex: 0x94 becomes 0x9). For MIDI messages from 0xF0 to 0xFF, the value is returned as-is.
		
		Notes will return `MIDI_MESSAGE_NOTE_ON` when activated, but they might not always return `MIDI_MESSAGE_NOTE_OFF` when deactivated, therefore your code should treat the input as stopped if some period of time has passed.
		
		For more information, see the MIDI message status byte list chart linked above.
	**/
	@:native("Message")
	public var message:Int;

	/**		
		The MIDI channel of this input event. There are 16 channels, so this value ranges from 0 to 15. MIDI channel 9 is reserved for the use with percussion instruments, the rest of the channels are for non-percussion instruments.
	**/
	@:native("Channel")
	public var channel:Int;

	@:native("new")
	public function new():Void;

	@:native("SetChannel")
	public function setChannel(channel:Int):Void;

	@:native("GetChannel")
	public function getChannel():Int;

	@:native("SetMessage")
	public function setMessage(message:Int):Void;

	@:native("GetMessage")
	public function getMessage():Int;

	@:native("SetPitch")
	public function setPitch(pitch:Int):Void;

	@:native("GetPitch")
	public function getPitch():Int;

	@:native("SetVelocity")
	public function setVelocity(velocity:Int):Void;

	@:native("GetVelocity")
	public function getVelocity():Int;

	@:native("SetInstrument")
	public function setInstrument(instrument:Int):Void;

	@:native("GetInstrument")
	public function getInstrument():Int;

	@:native("SetPressure")
	public function setPressure(pressure:Int):Void;

	@:native("GetPressure")
	public function getPressure():Int;

	@:native("SetControllerNumber")
	public function setControllerNumber(controllerNumber:Int):Void;

	@:native("GetControllerNumber")
	public function getControllerNumber():Int;

	@:native("SetControllerValue")
	public function setControllerValue(controllerValue:Int):Void;

	@:native("GetControllerValue")
	public function getControllerValue():Int;
}
