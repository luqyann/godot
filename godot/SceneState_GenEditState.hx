// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SceneState.GenEditState")
@:csNative
extern enum SceneState_GenEditState {
	/**		
		If passed to `godot.PackedScene.instance`, blocks edits to the scene state.
	**/
	Disabled;

	/**		
		If passed to `godot.PackedScene.instance`, provides inherited scene resources to the local scene.
		
		Note: Only available in editor builds.
	**/
	Instance;

	/**		
		If passed to `godot.PackedScene.instance`, provides local scene resources to the local scene. Only the main scene should receive the main edit state.
		
		Note: Only available in editor builds.
	**/
	Main;

	/**		
		If passed to `godot.PackedScene.instance`, it's similar to `godot.SceneState_GenEditState.main`, but for the case where the scene is being instantiated to be the base of another one.
		
		Note: Only available in editor builds.
	**/
	MainInherited;
}
