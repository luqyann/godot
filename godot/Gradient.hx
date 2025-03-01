// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Given a set of colors, this resource will interpolate them in order. This means that if you have color 1, color 2 and color 3, the ramp will interpolate from color 1 to color 2 and from color 2 to color 3. The ramp will initially have 2 colors (black and white), one (black) at ramp lower offset 0 and the other (white) at the ramp higher offset 1.
**/
@:libType
@:csNative
@:native("Godot.Gradient")
@:autoBuild(godot.Godot.buildUserClass())
extern class Gradient extends godot.Resource {
	/**		
		Gradient's colors returned as a `godot.Color`.
	**/
	@:native("Colors")
	public var colors:cs.NativeArray<godot.Color>;

	/**		
		Gradient's offsets returned as a `Single`.
	**/
	@:native("Offsets")
	public var offsets:cs.NativeArray<Single>;

	/**		
		Defines how the colors between points of the gradient are interpolated. See `godot.Gradient_InterpolationModeEnum` for available modes.
	**/
	@:native("InterpolationMode")
	public var interpolationMode:godot.Gradient_InterpolationModeEnum;

	@:native("new")
	public function new():Void;

	/**		
		Adds the specified color to the end of the ramp, with the specified offset.
	**/
	@:native("AddPoint")
	public function addPoint(offset:Single, color:godot.Color):Void;

	/**		
		Removes the color at the index `point`.
	**/
	@:native("RemovePoint")
	public function removePoint(point:Int):Void;

	/**		
		Sets the offset for the ramp color at index `point`.
	**/
	@:native("SetOffset")
	public function setOffset(point:Int, offset:Single):Void;

	/**		
		Returns the offset of the ramp color at index `point`.
	**/
	@:native("GetOffset")
	public function getOffset(point:Int):Single;

	/**		
		Sets the color of the ramp color at index `point`.
	**/
	@:native("SetColor")
	public function setColor(point:Int, color:godot.Color):Void;

	/**		
		Returns the color of the ramp color at index `point`.
	**/
	@:native("GetColor")
	public function getColor(point:Int):godot.Color;

	/**		
		Returns the interpolated color specified by `offset`.
	**/
	@:native("Interpolate")
	public function interpolate(offset:Single):godot.Color;

	/**		
		Returns the number of colors in the ramp.
	**/
	@:native("GetPointCount")
	public function getPointCount():Int;

	@:native("SetOffsets")
	public function setOffsets(offsets:HaxeArray<Single>):Void;

	public extern inline function getOffsets():std.Array<Single> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetOffsets()", this));
	}

	@:native("SetColors")
	public function setColors(colors:HaxeArray<godot.Color>):Void;

	public extern inline function getColors():std.Array<godot.Color> {
		return cs.Lib.array(cs.Syntax.code("{0}.GetColors()", this));
	}

	@:native("SetInterpolationMode")
	public function setInterpolationMode(interpolationMode:godot.Gradient_InterpolationModeEnum):Void;

	@:native("GetInterpolationMode")
	public function getInterpolationMode():godot.Gradient_InterpolationModeEnum;
}
