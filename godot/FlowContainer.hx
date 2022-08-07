// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Arranges child `godot.Control` nodes vertically or horizontally in a left-to-right or top-to-bottom flow.

A line is filled with `godot.Control` nodes until no more fit on the same line, similar to text in an autowrapped label.
**/
@:libType
@:csNative
@:native("Godot.FlowContainer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class FlowContainer extends godot.Container {
	/**		
		Returns the current line count.
	**/
	@:native("GetLineCount")
	public function getLineCount():Int;
}
