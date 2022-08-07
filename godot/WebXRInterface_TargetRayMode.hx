// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.WebXRInterface.TargetRayMode")
@:csNative
extern enum WebXRInterface_TargetRayMode {
	/**		
		We don't know the target ray mode.
	**/
	Unknown;

	/**		
		Target ray originates at the viewer's eyes and points in the direction they are looking.
	**/
	Gaze;

	/**		
		Target ray from a handheld pointer, most likely a VR touch controller.
	**/
	TrackedPointer;

	/**		
		Target ray from touch screen, mouse or other tactile input device.
	**/
	Screen;
}
