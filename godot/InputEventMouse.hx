// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Stores general mouse events information.
**/
@:libType
@:csNative
@:native("Godot.InputEventMouse")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class InputEventMouse extends godot.InputEventWithModifiers {
	/**		
		When received in `godot.Node._Input` or `godot.Node._UnhandledInput`, returns the mouse's position in the root `godot.Viewport` using the coordinate system of the root `godot.Viewport`.
		
		When received in `godot.Control._GuiInput`, returns the mouse's position in the `godot.CanvasLayer` that the `godot.Control` is in using the coordinate system of the `godot.CanvasLayer`.
	**/
	@:native("GlobalPosition")
	public var globalPosition:godot.Vector2;

	/**		
		When received in `godot.Node._Input` or `godot.Node._UnhandledInput`, returns the mouse's position in the `godot.Viewport` this `godot.Node` is in using the coordinate system of this `godot.Viewport`.
		
		When received in `godot.Control._GuiInput`, returns the mouse's position in the `godot.Control` using the local coordinate system of the `godot.Control`.
	**/
	@:native("Position")
	public var position:godot.Vector2;

	/**		
		The mouse button mask identifier, one of or a bitwise combination of the `godot.ButtonList` button masks.
	**/
	@:native("ButtonMask")
	public var buttonMask:Int;

	@:native("SetButtonMask")
	public function setButtonMask(buttonMask:Int):Void;

	@:native("GetButtonMask")
	public function getButtonMask():Int;

	@:native("SetPosition")
	public function setPosition(position:godot.Vector2):Void;

	@:native("GetPosition")
	public function getPosition():godot.Vector2;

	@:native("SetGlobalPosition")
	public function setGlobalPosition(globalPosition:godot.Vector2):Void;

	@:native("GetGlobalPosition")
	public function getGlobalPosition():godot.Vector2;
}
