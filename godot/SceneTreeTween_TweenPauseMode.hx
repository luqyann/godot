// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.SceneTreeTween.TweenPauseMode")
@:csNative
extern enum SceneTreeTween_TweenPauseMode {
	/**		
		If the `godot.SceneTreeTween` has a bound node, it will process when that node can process (see `godot.Node.pauseMode`). Otherwise it's the same as `godot.SceneTreeTween_TweenPauseMode.stop`.
	**/
	Bound;

	/**		
		If `godot.SceneTree` is paused, the `godot.SceneTreeTween` will also pause.
	**/
	Stop;

	/**		
		The `godot.SceneTreeTween` will process regardless of whether `godot.SceneTree` is paused.
	**/
	Process;
}
