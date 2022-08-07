// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

@:libType
@:csNative
@:native("Godot.GLTFSkin")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFSkin extends godot.Resource {
	@:native("GodotSkin")
	public var godotSkin:godot.Skin;

	@:native("JointIToName")
	public var jointIToName:godot.collections.Dictionary;

	@:native("JointIToBoneI")
	public var jointIToBoneI:godot.collections.Dictionary;

	@:native("Skeleton")
	public var skeleton:Int;

	@:native("Roots")
	public var roots:cs.NativeArray<Int>;

	@:native("NonJoints")
	public var nonJoints:cs.NativeArray<Int>;

	@:native("Joints")
	public var joints:cs.NativeArray<Int>;

	@:native("InverseBinds")
	public var inverseBinds:godot.collections.Array;

	@:native("JointsOriginal")
	public var jointsOriginal:cs.NativeArray<Int>;

	@:native("SkinRoot")
	public var skinRoot:Int;

	@:native("new")
	public function new():Void;

	@:native("GetSkinRoot")
	public function getSkinRoot():Int;

	@:native("SetSkinRoot")
	public function setSkinRoot(skinRoot:Int):Void;

	public extern inline function getJointsOriginal():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetJointsOriginal()", this));
	}

	@:native("SetJointsOriginal")
	public function setJointsOriginal(jointsOriginal:HaxeArray<Int>):Void;

	@:native("GetInverseBinds")
	public function getInverseBinds():godot.collections.Array;

	@:native("SetInverseBinds")
	public function setInverseBinds(inverseBinds:godot.collections.Array):Void;

	public extern inline function getJoints():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetJoints()", this));
	}

	@:native("SetJoints")
	public function setJoints(joints:HaxeArray<Int>):Void;

	public extern inline function getNonJoints():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetNonJoints()", this));
	}

	@:native("SetNonJoints")
	public function setNonJoints(nonJoints:HaxeArray<Int>):Void;

	public extern inline function getRoots():std.Array<Int> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetRoots()", this));
	}

	@:native("SetRoots")
	public function setRoots(roots:HaxeArray<Int>):Void;

	@:native("GetSkeleton")
	public function getSkeleton():Int;

	@:native("SetSkeleton")
	public function setSkeleton(skeleton:Int):Void;

	@:native("GetJointIToBoneI")
	public function getJointIToBoneI():godot.collections.Dictionary;

	@:native("SetJointIToBoneI")
	public function setJointIToBoneI(jointIToBoneI:godot.collections.Dictionary):Void;

	@:native("GetJointIToName")
	public function getJointIToName():godot.collections.Dictionary;

	@:native("SetJointIToName")
	public function setJointIToName(jointIToName:godot.collections.Dictionary):Void;

	@:native("GetGodotSkin")
	public function getGodotSkin():godot.Skin;

	@:native("SetGodotSkin")
	public function setGodotSkin(godotSkin:godot.Skin):Void;
}
