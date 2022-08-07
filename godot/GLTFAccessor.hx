// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Note: This class is only compiled in editor builds. Run-time glTF loading and saving is not available in exported projects. References to `godot.GLTFAccessor` within a script will cause an error in an exported project.
**/
@:libType
@:csNative
@:native("Godot.GLTFAccessor")
@:autoBuild(godot.Godot.buildUserClass())
extern class GLTFAccessor extends godot.Resource {
	@:native("SparseValuesByteOffset")
	public var sparseValuesByteOffset:Int;

	@:native("SparseValuesBufferView")
	public var sparseValuesBufferView:Int;

	@:native("SparseIndicesComponentType")
	public var sparseIndicesComponentType:Int;

	@:native("SparseIndicesByteOffset")
	public var sparseIndicesByteOffset:Int;

	@:native("SparseIndicesBufferView")
	public var sparseIndicesBufferView:Int;

	@:native("SparseCount")
	public var sparseCount:Int;

	@:native("Max")
	public var max:cs.NativeArray<Single>;

	@:native("Min")
	public var min:cs.NativeArray<Single>;

	@:native("Type")
	public var type:Int;

	@:native("Count")
	public var count:Int;

	@:native("Normalized")
	public var normalized:Bool;

	@:native("ComponentType")
	public var componentType:Int;

	@:native("ByteOffset")
	public var byteOffset:Int;

	@:native("BufferView")
	public var bufferView:Int;

	@:native("new")
	public function new():Void;

	@:native("GetBufferView")
	public function getBufferView():Int;

	@:native("SetBufferView")
	public function setBufferView(bufferView:Int):Void;

	@:native("GetByteOffset")
	public function getByteOffset():Int;

	@:native("SetByteOffset")
	public function setByteOffset(byteOffset:Int):Void;

	@:native("GetComponentType")
	public function getComponentType():Int;

	@:native("SetComponentType")
	public function setComponentType(componentType:Int):Void;

	@:native("GetNormalized")
	public function getNormalized():Bool;

	@:native("SetNormalized")
	public function setNormalized(normalized:Bool):Void;

	@:native("GetCount")
	public function getCount():Int;

	@:native("SetCount")
	public function setCount(count:Int):Void;

	@:native("GetType")
	public function getType():Int;

	@:native("SetType")
	public function setType(type:Int):Void;

	public extern inline function getMin():std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetMin()", this));
	}

	@:native("SetMin")
	public function setMin(min:HaxeArray<Single>):Void;

	public extern inline function getMax():std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetMax()", this));
	}

	@:native("SetMax")
	public function setMax(max:HaxeArray<Single>):Void;

	@:native("GetSparseCount")
	public function getSparseCount():Int;

	@:native("SetSparseCount")
	public function setSparseCount(sparseCount:Int):Void;

	@:native("GetSparseIndicesBufferView")
	public function getSparseIndicesBufferView():Int;

	@:native("SetSparseIndicesBufferView")
	public function setSparseIndicesBufferView(sparseIndicesBufferView:Int):Void;

	@:native("GetSparseIndicesByteOffset")
	public function getSparseIndicesByteOffset():Int;

	@:native("SetSparseIndicesByteOffset")
	public function setSparseIndicesByteOffset(sparseIndicesByteOffset:Int):Void;

	@:native("GetSparseIndicesComponentType")
	public function getSparseIndicesComponentType():Int;

	@:native("SetSparseIndicesComponentType")
	public function setSparseIndicesComponentType(sparseIndicesComponentType:Int):Void;

	@:native("GetSparseValuesBufferView")
	public function getSparseValuesBufferView():Int;

	@:native("SetSparseValuesBufferView")
	public function setSparseValuesBufferView(sparseValuesBufferView:Int):Void;

	@:native("GetSparseValuesByteOffset")
	public function getSparseValuesByteOffset():Int;

	@:native("SetSparseValuesByteOffset")
	public function setSparseValuesByteOffset(sparseValuesByteOffset:Int):Void;
}
