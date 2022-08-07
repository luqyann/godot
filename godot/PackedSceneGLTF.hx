// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.PackedSceneGLTF` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.PackedSceneGLTF")
@:autoBuild(godot.Godot.buildUserClass())
extern class PackedSceneGLTF extends godot.PackedScene {
	@:native("new")
	public function new():Void;

	#if doc_gen
	@:native("ExportGltf")
	public function exportGltf(node:godot.Node, path:std.String, ?flags:Int, ?bakeFps:Single):godot.Error;
	#else
	@:native("ExportGltf")
	public overload function exportGltf(node:godot.Node, path:std.String):godot.Error;

	@:native("ExportGltf")
	public overload function exportGltf(node:godot.Node, path:std.String, flags:Int):godot.Error;

	@:native("ExportGltf")
	public overload function exportGltf(node:godot.Node, path:std.String, flags:Int, bakeFps:Single):godot.Error;
	#end

	#if doc_gen
	@:native("PackGltf")
	public function packGltf(path:std.String, ?flags:Int, ?bakeFps:Single, ?compressFlags:UInt, ?state:godot.GLTFState):Void;
	#else
	@:native("PackGltf")
	public overload function packGltf(path:std.String):Void;

	@:native("PackGltf")
	public overload function packGltf(path:std.String, flags:Int):Void;

	@:native("PackGltf")
	public overload function packGltf(path:std.String, flags:Int, bakeFps:Single):Void;

	@:native("PackGltf")
	public overload function packGltf(path:std.String, flags:Int, bakeFps:Single, compressFlags:UInt):Void;

	@:native("PackGltf")
	public overload function packGltf(path:std.String, flags:Int, bakeFps:Single, compressFlags:UInt, state:godot.GLTFState):Void;
	#end

	#if doc_gen
	@:native("ImportGltfScene")
	public function importGltfScene(path:std.String, ?flags:UInt, ?bakeFps:Single, ?compressFlags:UInt, ?state:godot.GLTFState):godot.Node;
	#else
	@:native("ImportGltfScene")
	public overload function importGltfScene(path:std.String):godot.Node;

	@:native("ImportGltfScene")
	public overload function importGltfScene(path:std.String, flags:UInt):godot.Node;

	@:native("ImportGltfScene")
	public overload function importGltfScene(path:std.String, flags:UInt, bakeFps:Single):godot.Node;

	@:native("ImportGltfScene")
	public overload function importGltfScene(path:std.String, flags:UInt, bakeFps:Single, compressFlags:UInt):godot.Node;

	@:native("ImportGltfScene")
	public overload function importGltfScene(path:std.String, flags:UInt, bakeFps:Single, compressFlags:UInt, state:godot.GLTFState):godot.Node;
	#end
}
