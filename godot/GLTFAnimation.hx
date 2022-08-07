// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFAnimation` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFAnimation")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFAnimation extends godot.Resource {
	@:native("Loop")
	public var loop:Bool;

	@:native("new")
	public function new():Void;

	@:native("GetLoop")
	public function getLoop():Bool;

	@:native("SetLoop")
	public function setLoop(loop:Bool):Void;
}
