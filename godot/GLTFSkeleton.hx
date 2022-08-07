// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFSkeleton` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFSkeleton")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFSkeleton extends godot.Resource {
	@:native("GodotBoneNode")
	public var godotBoneNode:godot.collections.Dictionary;

	@:native("UniqueNames")
	public var uniqueNames:godot.collections.Array;

	@:native("Roots")
	public var roots:cs.NativeArray<Int>;

	@:native("Joints")
	public var joints:cs.NativeArray<Int>;

	@:native("new")
	public function new():Void;

	public extern inline function getJoints():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetJoints()", this));
	}

	@:native("SetJoints")
	public function setJoints(joints:HaxeArray<Int>):Void;

	public extern inline function getRoots():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetRoots()", this));
	}

	@:native("SetRoots")
	public function setRoots(roots:HaxeArray<Int>):Void;

	@:native("GetGodotSkeleton")
	public function getGodotSkeleton():godot.Skeleton;

	@:native("GetUniqueNames")
	public function getUniqueNames():godot.collections.Array;

	@:native("SetUniqueNames")
	public function setUniqueNames(uniqueNames:godot.collections.Array):Void;

	@:native("GetGodotBoneNode")
	public function getGodotBoneNode():godot.collections.Dictionary;

	@:native("SetGodotBoneNode")
	public function setGodotBoneNode(godotBoneNode:godot.collections.Dictionary):Void;

	@:native("GetBoneAttachmentCount")
	public function getBoneAttachmentCount():Int;

	@:native("GetBoneAttachment")
	public function getBoneAttachment(idx:Int):godot.BoneAttachment;
}
