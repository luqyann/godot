// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFMesh` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFMesh")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFMesh extends godot.Resource {
	@:native("InstanceMaterials")
	public var instanceMaterials:godot.collections.Array;

	@:native("BlendWeights")
	public var blendWeights:cs.NativeArray<Single>;

	@:native("Mesh")
	public var mesh:godot.ArrayMesh;

	@:native("new")
	public function new():Void;

	@:native("GetMesh")
	public function getMesh():godot.ArrayMesh;

	@:native("SetMesh")
	public function setMesh(mesh:godot.ArrayMesh):Void;

	public extern inline function getBlendWeights():std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetBlendWeights()", this));
	}

	@:native("SetBlendWeights")
	public function setBlendWeights(blendWeights:HaxeArray<Single>):Void;

	@:native("GetInstanceMaterials")
	public function getInstanceMaterials():godot.collections.Array;

	@:native("SetInstanceMaterials")
	public function setInstanceMaterials(instanceMaterials:godot.collections.Array):Void;
}
