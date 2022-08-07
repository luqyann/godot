// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFCamera` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFCamera")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFCamera extends godot.Resource {
	@:native("Znear")
	public var znear:Single;

	@:native("Zfar")
	public var zfar:Single;

	@:native("FovSize")
	public var fovSize:Single;

	@:native("Perspective")
	public var perspective:Bool;

	@:native("new")
	public function new():Void;

	@:native("GetPerspective")
	public function getPerspective():Bool;

	@:native("SetPerspective")
	public function setPerspective(perspective:Bool):Void;

	@:native("GetFovSize")
	public function getFovSize():Single;

	@:native("SetFovSize")
	public function setFovSize(fovSize:Single):Void;

	@:native("GetZfar")
	public function getZfar():Single;

	@:native("SetZfar")
	public function setZfar(zfar:Single):Void;

	@:native("GetZnear")
	public function getZnear():Single;

	@:native("SetZnear")
	public function setZnear(znear:Single):Void;
}
