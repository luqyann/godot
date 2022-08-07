// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
`godot.IntervalTweener` is used to make delays in a tweening sequence. See `godot.SceneTreeTween.tweenInterval` for more usage information.

Note: `godot.SceneTreeTween.tweenInterval` is the only correct way to create `godot.IntervalTweener`. Any `godot.IntervalTweener` created manually will not function correctly.
**/
@:libType
@:csNative
@:native("Godot.IntervalTweener")
@:autoBuild(godot.Godot.buildUserClass())
extern class IntervalTweener extends godot.Tweener {
	@:native("new")
	public function new():Void;
}
