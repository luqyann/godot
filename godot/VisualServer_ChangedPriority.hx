// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.VisualServer.ChangedPriority")
@:csNative
extern enum VisualServer_ChangedPriority {
	/**		
		Used to query for any changes that request a redraw, whatever the priority.
	**/
	Any;

	/**		
		Registered changes which have low priority can be optionally prevented from causing editor redraws. Examples might include dynamic shaders (typically using the `TIME` built-in).
	**/
	Low;

	/**		
		Registered changes which can cause a redraw default to high priority.
	**/
	High;
}
