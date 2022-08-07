// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Contains mouse and pen motion information. Supports relative, absolute positions and speed. See `godot.Node._Input`.

Note: The behavior of this event is affected by the value of `godot.Input.useAccumulatedInput`. When set to `true` (default), mouse/pen motion events received from the OS will be merged to emit an accumulated event only once per frame rendered at most. When set to `false`, the events will be emitted as received, which means that they can be emitted multiple times per frame rendered, allowing for precise input reporting at the expense of CPU usage.

Note: If you use InputEventMouseMotion to draw lines, consider implementing [https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm](Bresenham's line algorithm) as well to avoid visible gaps in lines if the user is moving the mouse quickly.
**/
@:libType
@:csNative
@:native("Godot.InputEventMouseMotion")
@:autoBuild(godot.Godot.buildUserClass())
extern class InputEventMouseMotion extends godot.InputEventMouse {
	/**		
		The mouse speed in pixels per second.
	**/
	@:native("Speed")
	public var speed:godot.Vector2;

	/**		
		The mouse position relative to the previous position (position at the last frame).
		
		Note: Since `godot.InputEventMouseMotion` is only emitted when the mouse moves, the last event won't have a relative position of `Vector2(0, 0)` when the user stops moving the mouse.
	**/
	@:native("Relative")
	public var relative:godot.Vector2;

	/**		
		Returns `true` when using the eraser end of a stylus pen.
		
		Note: This property is implemented on Linux, macOS and Windows.
	**/
	@:native("PenInverted")
	public var penInverted:Bool;

	/**		
		Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
	**/
	@:native("Pressure")
	public var pressure:Single;

	/**		
		Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
	**/
	@:native("Tilt")
	public var tilt:godot.Vector2;

	@:native("new")
	public function new():Void;

	@:native("SetTilt")
	public function setTilt(tilt:godot.Vector2):Void;

	@:native("GetTilt")
	public function getTilt():godot.Vector2;

	@:native("SetPressure")
	public function setPressure(pressure:Single):Void;

	@:native("GetPressure")
	public function getPressure():Single;

	@:native("SetPenInverted")
	public function setPenInverted(penInverted:Bool):Void;

	@:native("GetPenInverted")
	public function getPenInverted():Bool;

	@:native("SetRelative")
	public function setRelative(relative:godot.Vector2):Void;

	@:native("GetRelative")
	public function getRelative():godot.Vector2;

	@:native("SetSpeed")
	public function setSpeed(speed:godot.Vector2):Void;

	@:native("GetSpeed")
	public function getSpeed():godot.Vector2;
}
