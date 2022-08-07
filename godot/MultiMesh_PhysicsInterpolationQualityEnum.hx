// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.MultiMesh.PhysicsInterpolationQualityEnum")
@:csNative
extern enum MultiMesh_PhysicsInterpolationQualityEnum {
	/**		
		Always interpolate using Basis lerping, which can produce warping artifacts in some situations.
	**/
	Fast;

	/**		
		Attempt to interpolate using Basis slerping (spherical linear interpolation) where possible, otherwise fall back to lerping.
	**/
	High;
}
