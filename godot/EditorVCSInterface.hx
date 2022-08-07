// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Defines the API that the editor uses to extract information from the underlying VCS. The implementation of this API is included in VCS plugins, which are scripts that inherit `godot.EditorVCSInterface` and are attached (on demand) to the singleton instance of `godot.EditorVCSInterface`. Instead of performing the task themselves, all the virtual functions listed below are calling the internally overridden functions in the VCS plugins to provide a plug-n-play experience. A custom VCS plugin is supposed to inherit from `godot.EditorVCSInterface` and override these virtual functions.
**/
@:libType
@:csNative
@:native("Godot.EditorVCSInterface")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorVCSInterface extends godot.Object {
	@:native("new")
	public function new():Void;

	/**		
		Checks out a `branch_name` in the VCS.
	**/
	@:native("_CheckoutBranch")
	public function _CheckoutBranch(branchName:std.String):Bool;

	/**		
		Commits the currently staged changes and applies the commit `msg` to the resulting commit.
	**/
	@:native("_Commit")
	public function _Commit(msg:std.String):Void;

	/**		
		Creates a new branch named `branch_name` in the VCS.
	**/
	@:native("_CreateBranch")
	public function _CreateBranch(branchName:std.String):Void;

	/**		
		Creates a new remote destination with name `remote_name` and points it to `remote_url`. This can be both an HTTPS remote or an SSH remote.
	**/
	@:native("_CreateRemote")
	public function _CreateRemote(remoteName:std.String, remoteUrl:std.String):Void;

	/**		
		Discards the changes made in file present at `file_path`.
	**/
	@:native("_DiscardFile")
	public function _DiscardFile(filePath:std.String):Void;

	/**		
		Fetches new changes from the remote, but doesn't write changes to the current working directory. Equivalent to `git fetch`.
	**/
	@:native("_Fetch")
	public function _Fetch(remote:std.String):Void;

	/**		
		Gets an instance of an `godot.Collections_Array` of `String`s containing available branch names in the VCS.
	**/
	@:native("_GetBranchList")
	public function _GetBranchList():godot.collections.Array;

	/**		
		Gets the current branch name defined in the VCS.
	**/
	@:native("_GetCurrentBranchName")
	public function _GetCurrentBranchName():std.String;

	/**		
		Returns an `godot.Collections_Array` of `godot.Collections_Dictionary` items (see `godot.EditorVCSInterface.createDiffFile`, `godot.EditorVCSInterface.createDiffHunk`, `godot.EditorVCSInterface.createDiffLine`, `godot.EditorVCSInterface.addLineDiffsIntoDiffHunk` and `godot.EditorVCSInterface.addDiffHunksIntoDiffFile`), each containing information about a diff. If `identifier` is a file path, returns a file diff, and if it is a commit identifier, then returns a commit diff.
	**/
	@:native("_GetDiff")
	public function _GetDiff(identifier:std.String, area:Int):godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of `godot.Collections_Dictionary` items (see `godot.EditorVCSInterface.createDiffHunk`), each containing a line diff between a file at `file_path` and the `text` which is passed in.
	**/
	@:native("_GetLineDiff")
	public function _GetLineDiff(filePath:std.String, text:std.String):godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of `godot.Collections_Dictionary` items (see `godot.EditorVCSInterface.createStatusFile`), each containing the status data of every modified file in the project folder.
	**/
	@:native("_GetModifiedFilesData")
	public function _GetModifiedFilesData():godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of `godot.Collections_Dictionary` items (see `godot.EditorVCSInterface.createCommit`), each containing the data for a past commit.
	**/
	@:native("_GetPreviousCommits")
	public function _GetPreviousCommits(maxCommits:Int):godot.collections.Array;

	/**		
		Returns an `godot.Collections_Array` of `String`s, each containing the name of a remote configured in the VCS.
	**/
	@:native("_GetRemotes")
	public function _GetRemotes():godot.collections.Array;

	/**		
		Returns the name of the underlying VCS provider.
	**/
	@:native("_GetVcsName")
	public function _GetVcsName():std.String;

	/**		
		Initializes the VCS plugin when called from the editor. Returns whether or not the plugin was successfully initialized. A VCS project is initialized at `project_path`.
	**/
	@:native("_Initialize")
	public function _Initialize(projectPath:std.String):Bool;

	/**		
		Pulls changes from the remote. This can give rise to merge conflicts.
	**/
	@:native("_Pull")
	public function _Pull(remote:std.String):Void;

	/**		
		Pushes changes to the `remote`. Optionally, if `force` is set to true, a force push will override the change history already present on the remote.
	**/
	@:native("_Push")
	public function _Push(remote:std.String, force:Bool):Void;

	/**		
		Remove a branch from the local VCS.
	**/
	@:native("_RemoveBranch")
	public function _RemoveBranch(branchName:std.String):Void;

	/**		
		Remove a remote from the local VCS.
	**/
	@:native("_RemoveRemote")
	public function _RemoveRemote(remoteName:std.String):Void;

	/**		
		Set user credentials in the underlying VCS. `username` and `password` are used only during HTTPS authentication unless not already mentioned in the remote URL. `ssh_public_key_path`, `ssh_private_key_path`, and `ssh_passphrase` are only used during SSH authentication.
	**/
	@:native("_SetCredentials")
	public function _SetCredentials(username:std.String, password:std.String, sshPublicKeyPath:std.String, sshPrivateKeyPath:std.String, sshPassphrase:std.String):Void;

	/**		
		Shuts down VCS plugin instance. Called when the user either closes the editor or shuts down the VCS plugin through the editor UI.
	**/
	@:native("_ShutDown")
	public function _ShutDown():Bool;

	/**		
		Stages the file present at `file_path` to the staged area.
	**/
	@:native("_StageFile")
	public function _StageFile(filePath:std.String):Void;

	/**		
		Unstages the file present at `file_path` from the staged area to the unstaged area.
	**/
	@:native("_UnstageFile")
	public function _UnstageFile(filePath:std.String):Void;

	/**		
		Helper function to create a `Dictionary` for storing a line diff. `new_line_no` is the line number in the new file (can be `-1` if the line is deleted). `old_line_no` is the line number in the old file (can be `-1` if the line is added). `content` is the diff text. `status` is a single character string which stores the line origin.
	**/
	@:native("CreateDiffLine")
	public function createDiffLine(newLineNo:Int, oldLineNo:Int, content:std.String, status:std.String):godot.collections.Dictionary;

	/**		
		Helper function to create a `Dictionary` for storing diff hunk data. `old_start` is the starting line number in old file. `new_start` is the starting line number in new file. `old_lines` is the number of lines in the old file. `new_lines` is the number of lines in the new file.
	**/
	@:native("CreateDiffHunk")
	public function createDiffHunk(oldStart:Int, newStart:Int, oldLines:Int, newLines:Int):godot.collections.Dictionary;

	/**		
		Helper function to create a `Dictionary` for storing old and new diff file paths.
	**/
	@:native("CreateDiffFile")
	public function createDiffFile(newFile:std.String, oldFile:std.String):godot.collections.Dictionary;

	/**		
		Helper function to create a commit `godot.Collections_Dictionary` item. `msg` is the commit message of the commit. `author` is a single human-readable string containing all the author's details, e.g. the email and name configured in the VCS. `id` is the identifier of the commit, in whichever format your VCS may provide an identifier to commits. `unix_timestamp` is the UTC Unix timestamp of when the commit was created. `offset_minutes` is the timezone offset in minutes, recorded from the system timezone where the commit was created.
	**/
	@:native("CreateCommit")
	public function createCommit(msg:std.String, author:std.String, id:std.String, unixTimestamp:haxe.Int64, offsetMinutes:haxe.Int64):godot.collections.Dictionary;

	/**		
		Helper function to create a `Dictionary` used by editor to read the status of a file.
	**/
	@:native("CreateStatusFile")
	public function createStatusFile(filePath:std.String, changeType:godot.EditorVCSInterface_ChangeType, area:godot.EditorVCSInterface_TreeArea):godot.collections.Dictionary;

	/**		
		Helper function to add an array of `diff_hunks` into a `diff_file`.
	**/
	@:native("AddDiffHunksIntoDiffFile")
	public function addDiffHunksIntoDiffFile(diffFile:godot.collections.Dictionary, diffHunks:godot.collections.Array):godot.collections.Dictionary;

	/**		
		Helper function to add an array of `line_diffs` into a `diff_hunk`.
	**/
	@:native("AddLineDiffsIntoDiffHunk")
	public function addLineDiffsIntoDiffHunk(diffHunk:godot.collections.Dictionary, lineDiffs:godot.collections.Array):godot.collections.Dictionary;

	/**		
		Pops up an error message in the edior.
	**/
	@:native("PopupError")
	public function popupError(msg:std.String):Void;
}
