// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFNode` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFNode")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFNode extends godot.Resource {
	@:native("Light")
	public var light:Int;

	@:native("Children")
	public var children:cs.NativeArray<Int>;

	@:native("Scale")
	public var scale:godot.Vector3;

	@:native("Rotation")
	public var rotation:godot.Quat;

	@:native("Translation")
	public var translation:godot.Vector3;

	@:native("Joint")
	public var joint:Bool;

	@:native("Skeleton")
	public var skeleton:Int;

	@:native("Skin")
	public var skin:Int;

	@:native("Camera")
	public var camera:Int;

	@:native("Mesh")
	public var mesh:Int;

	@:native("Xform")
	public var xform:godot.Transform;

	@:native("Height")
	public var height:Int;

	@:native("Parent")
	public var parent:Int;

	@:native("new")
	public function new():Void;

	@:native("GetParent")
	public function getParent():Int;

	@:native("SetParent")
	public function setParent(parent:Int):Void;

	@:native("GetHeight")
	public function getHeight():Int;

	@:native("SetHeight")
	public function setHeight(height:Int):Void;

	@:native("GetXform")
	public function getXform():godot.Transform;

	@:native("SetXform")
	public function setXform(xform:godot.Transform):Void;

	@:native("GetMesh")
	public function getMesh():Int;

	@:native("SetMesh")
	public function setMesh(mesh:Int):Void;

	@:native("GetCamera")
	public function getCamera():Int;

	@:native("SetCamera")
	public function setCamera(camera:Int):Void;

	@:native("GetSkin")
	public function getSkin():Int;

	@:native("SetSkin")
	public function setSkin(skin:Int):Void;

	@:native("GetSkeleton")
	public function getSkeleton():Int;

	@:native("SetSkeleton")
	public function setSkeleton(skeleton:Int):Void;

	@:native("GetJoint")
	public function getJoint():Bool;

	@:native("SetJoint")
	public function setJoint(joint:Bool):Void;

	@:native("GetTranslation")
	public function getTranslation():godot.Vector3;

	@:native("SetTranslation")
	public function setTranslation(translation:godot.Vector3):Void;

	@:native("GetRotation")
	public function getRotation():godot.Quat;

	@:native("SetRotation")
	public function setRotation(rotation:godot.Quat):Void;

	@:native("GetScale")
	public function getScale():godot.Vector3;

	@:native("SetScale")
	public function setScale(scale:godot.Vector3):Void;

	public extern inline function getChildren():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetChildren()", this));
	}

	@:native("SetChildren")
	public function setChildren(children:HaxeArray<Int>):Void;

	@:native("GetLight")
	public function getLight():Int;

	@:native("SetLight")
	public function setLight(light:Int):Void;
}
