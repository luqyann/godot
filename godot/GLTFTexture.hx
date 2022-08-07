// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFTexture` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFTexture")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFTexture extends godot.Resource {
	@:native("SrcImage")
	public var srcImage:Int;

	@:native("new")
	public function new():Void;

	@:native("GetSrcImage")
	public function getSrcImage():Int;

	@:native("SetSrcImage")
	public function setSrcImage(srcImage:Int):Void;
}
