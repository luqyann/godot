// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.Font.ContourPointTag")
@:csNative
extern enum Font_ContourPointTag {
	/**		
		Contour point isn't on the curve, but serves as a control point for a conic (quadratic) Bézier arc.
	**/
	OffConic;

	/**		
		Contour point is on the curve.
	**/
	On;

	/**		
		Contour point isn't on the curve, but serves as a control point for a cubic Bézier arc.
	**/
	OffCubic;
}
