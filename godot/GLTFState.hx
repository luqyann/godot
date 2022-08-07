// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFState` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFState")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFState extends godot.Resource {
	@:native("Animations")
	public var animations:godot.collections.Array;

	@:native("SkeletonToNode")
	public var skeletonToNode:godot.collections.Dictionary;

	@:native("Skeletons")
	public var skeletons:godot.collections.Array;

	@:native("UniqueAnimationNames")
	public var uniqueAnimationNames:godot.collections.Array;

	@:native("UniqueNames")
	public var uniqueNames:godot.collections.Array;

	@:native("Lights")
	public var lights:godot.collections.Array;

	@:native("Cameras")
	public var cameras:godot.collections.Array;

	@:native("Skins")
	public var skins:godot.collections.Array;

	@:native("Images")
	public var images:godot.collections.Array;

	@:native("Textures")
	public var textures:godot.collections.Array;

	@:native("RootNodes")
	public var rootNodes:godot.collections.Array;

	@:native("SceneName")
	public var sceneName:std.String;

	@:native("Materials")
	public var materials:godot.collections.Array;

	@:native("Meshes")
	public var meshes:godot.collections.Array;

	@:native("Accessors")
	public var accessors:godot.collections.Array;

	@:native("BufferViews")
	public var bufferViews:godot.collections.Array;

	@:native("Buffers")
	public var buffers:godot.collections.Array;

	@:native("Nodes")
	public var nodes:godot.collections.Array;

	@:native("UseNamedSkinBinds")
	public var useNamedSkinBinds:Bool;

	@:native("GlbData")
	public var glbData:cs.NativeArray<cs.types.UInt8>;

	@:native("MinorVersion")
	public var minorVersion:Int;

	@:native("MajorVersion")
	public var majorVersion:Int;

	@:native("Json")
	public var json:godot.collections.Dictionary;

	@:native("new")
	public function new():Void;

	@:native("GetJson")
	public function getJson():godot.collections.Dictionary;

	@:native("SetJson")
	public function setJson(json:godot.collections.Dictionary):Void;

	@:native("GetMajorVersion")
	public function getMajorVersion():Int;

	@:native("SetMajorVersion")
	public function setMajorVersion(majorVersion:Int):Void;

	@:native("GetMinorVersion")
	public function getMinorVersion():Int;

	@:native("SetMinorVersion")
	public function setMinorVersion(minorVersion:Int):Void;

	public extern inline function getGlbData():std.Array<cs.types.UInt8> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetGlbData()", this));
	}

	@:native("SetGlbData")
	public function setGlbData(glbData:HaxeArray<cs.types.UInt8>):Void;

	@:native("GetUseNamedSkinBinds")
	public function getUseNamedSkinBinds():Bool;

	@:native("SetUseNamedSkinBinds")
	public function setUseNamedSkinBinds(useNamedSkinBinds:Bool):Void;

	@:native("GetNodes")
	public function getNodes():godot.collections.Array;

	@:native("SetNodes")
	public function setNodes(nodes:godot.collections.Array):Void;

	@:native("GetBuffers")
	public function getBuffers():godot.collections.Array;

	@:native("SetBuffers")
	public function setBuffers(buffers:godot.collections.Array):Void;

	@:native("GetBufferViews")
	public function getBufferViews():godot.collections.Array;

	@:native("SetBufferViews")
	public function setBufferViews(bufferViews:godot.collections.Array):Void;

	@:native("GetAccessors")
	public function getAccessors():godot.collections.Array;

	@:native("SetAccessors")
	public function setAccessors(accessors:godot.collections.Array):Void;

	@:native("GetMeshes")
	public function getMeshes():godot.collections.Array;

	@:native("SetMeshes")
	public function setMeshes(meshes:godot.collections.Array):Void;

	@:native("GetAnimationPlayersCount")
	public function getAnimationPlayersCount(idx:Int):Int;

	@:native("GetAnimationPlayer")
	public function getAnimationPlayer(idx:Int):godot.AnimationPlayer;

	@:native("GetMaterials")
	public function getMaterials():godot.collections.Array;

	@:native("SetMaterials")
	public function setMaterials(materials:godot.collections.Array):Void;

	@:native("GetSceneName")
	public function getSceneName():std.String;

	@:native("SetSceneName")
	public function setSceneName(sceneName:std.String):Void;

	@:native("GetRootNodes")
	public function getRootNodes():godot.collections.Array;

	@:native("SetRootNodes")
	public function setRootNodes(rootNodes:godot.collections.Array):Void;

	@:native("GetTextures")
	public function getTextures():godot.collections.Array;

	@:native("SetTextures")
	public function setTextures(textures:godot.collections.Array):Void;

	@:native("GetImages")
	public function getImages():godot.collections.Array;

	@:native("SetImages")
	public function setImages(images:godot.collections.Array):Void;

	@:native("GetSkins")
	public function getSkins():godot.collections.Array;

	@:native("SetSkins")
	public function setSkins(skins:godot.collections.Array):Void;

	@:native("GetCameras")
	public function getCameras():godot.collections.Array;

	@:native("SetCameras")
	public function setCameras(cameras:godot.collections.Array):Void;

	@:native("GetLights")
	public function getLights():godot.collections.Array;

	@:native("SetLights")
	public function setLights(lights:godot.collections.Array):Void;

	@:native("GetUniqueNames")
	public function getUniqueNames():godot.collections.Array;

	@:native("SetUniqueNames")
	public function setUniqueNames(uniqueNames:godot.collections.Array):Void;

	@:native("GetUniqueAnimationNames")
	public function getUniqueAnimationNames():godot.collections.Array;

	@:native("SetUniqueAnimationNames")
	public function setUniqueAnimationNames(uniqueAnimationNames:godot.collections.Array):Void;

	@:native("GetSkeletons")
	public function getSkeletons():godot.collections.Array;

	@:native("SetSkeletons")
	public function setSkeletons(skeletons:godot.collections.Array):Void;

	@:native("GetSkeletonToNode")
	public function getSkeletonToNode():godot.collections.Dictionary;

	@:native("SetSkeletonToNode")
	public function setSkeletonToNode(skeletonToNode:godot.collections.Dictionary):Void;

	@:native("GetAnimations")
	public function getAnimations():godot.collections.Array;

	@:native("SetAnimations")
	public function setAnimations(animations:godot.collections.Array):Void;

	@:native("GetSceneNode")
	public function getSceneNode(idx:Int):godot.Node;
}
