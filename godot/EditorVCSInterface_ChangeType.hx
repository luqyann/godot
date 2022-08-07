// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

@:native("Godot.EditorVCSInterface.ChangeType")
@:csNative
extern enum EditorVCSInterface_ChangeType {
	/**		
		A new file has been added.
	**/
	New;

	/**		
		An earlier added file has been modified.
	**/
	Modified;

	/**		
		An earlier added file has been renamed.
	**/
	Renamed;

	/**		
		An earlier added file has been deleted.
	**/
	Deleted;

	/**		
		An earlier added file has been typechanged.
	**/
	Typechange;

	/**		
		A file is left unmerged.
	**/
	Unmerged;
}
