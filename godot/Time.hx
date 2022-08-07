// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
The Time singleton allows converting time between various formats and also getting time information from the system.

This class conforms with as many of the ISO 8601 standards as possible. All dates follow the Proleptic Gregorian calendar. As such, the day before `1582-10-15` is `1582-10-14`, not `1582-10-04`. The year before 1 AD (aka 1 BC) is number `0`, with the year before that (2 BC) being `-1`, etc.

Conversion methods assume "the same timezone", and do not handle timezone conversions or DST automatically. Leap seconds are also not handled, they must be done manually if desired. Suffixes such as "Z" are not handled, you need to strip them away manually.

When getting time information from the system, the time can either be in the local timezone or UTC depending on the `utc` parameter. However, the `godot.Time.getUnixTimeFromSystem` method always returns the time in UTC.

Important: The `_from_system` methods use the system clock that the user can manually set. Never use this method for precise time calculation since its results are subject to automatic adjustments by the user or the operating system. Always use `godot.Time.getTicksUsec` or `godot.Time.getTicksMsec` for precise time calculation instead, since they are guaranteed to be monotonic (i.e. never decrease).
**/
@:libType
@:csNative
@:native("Godot.Time")
@:autoBuild(godot.Godot.buildUserClass())
extern class Time {
	@:native("Singleton")
	public static var SINGLETON(default, never):godot.Object;

	/**		
		Converts the given Unix timestamp to a dictionary of keys: `year`, `month`, `day`, and `weekday`.
		
		The returned Dictionary's values will be the same as the `godot.Time.getDatetimeDictFromSystem` if the Unix timestamp is the current time, with the exception of Daylight Savings Time as it cannot be determined from the epoch.
	**/
	@:native("GetDatetimeDictFromUnixTime")
	public static function getDatetimeDictFromUnixTime(unixTimeVal:haxe.Int64):godot.collections.Dictionary;

	/**		
		Converts the given Unix timestamp to a dictionary of keys: `year`, `month`, `day`, and `weekday`.
	**/
	@:native("GetDateDictFromUnixTime")
	public static function getDateDictFromUnixTime(unixTimeVal:haxe.Int64):godot.collections.Dictionary;

	/**		
		Converts the given time to a dictionary of keys: `hour`, `minute`, and `second`.
	**/
	@:native("GetTimeDictFromUnixTime")
	public static function getTimeDictFromUnixTime(unixTimeVal:haxe.Int64):godot.collections.Dictionary;

	#if doc_gen
	/**		
		Converts the given Unix timestamp to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromUnixTime")
	public static function getDatetimeStringFromUnixTime(unixTimeVal:haxe.Int64, ?useSpace:Bool):std.String;
	#else
	/**		
		Converts the given Unix timestamp to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromUnixTime")
	public static overload function getDatetimeStringFromUnixTime(unixTimeVal:haxe.Int64):std.String;

	/**		
		Converts the given Unix timestamp to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromUnixTime")
	public static overload function getDatetimeStringFromUnixTime(unixTimeVal:haxe.Int64, useSpace:Bool):std.String;
	#end

	/**		
		Converts the given Unix timestamp to an ISO 8601 date string (YYYY-MM-DD).
	**/
	@:native("GetDateStringFromUnixTime")
	public static function getDateStringFromUnixTime(unixTimeVal:haxe.Int64):std.String;

	/**		
		Converts the given Unix timestamp to an ISO 8601 time string (HH:MM:SS).
	**/
	@:native("GetTimeStringFromUnixTime")
	public static function getTimeStringFromUnixTime(unixTimeVal:haxe.Int64):std.String;

	/**		
		Converts the given ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS) to a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, and `second`.
		
		If `weekday` is false, then the `weekday` entry is excluded (the calculation is relatively expensive).
		
		Note: Any decimal fraction in the time string will be ignored silently.
	**/
	@:native("GetDatetimeDictFromDatetimeString")
	public static function getDatetimeDictFromDatetimeString(datetime:std.String, weekday:Bool):godot.collections.Dictionary;

	/**		
		Converts the given dictionary of keys to an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		The given dictionary can be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, and `second`. Any other entries (including `dst`) are ignored.
		
		If the dictionary is empty, `0` is returned. If some keys are omitted, they default to the equivalent values for the Unix epoch timestamp 0 (1970-01-01 at 00:00:00).
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromDatetimeDict")
	public static function getDatetimeStringFromDatetimeDict(datetime:godot.collections.Dictionary, useSpace:Bool):std.String;

	/**		
		Converts a dictionary of time values to a Unix timestamp.
		
		The given dictionary can be populated with the following keys: `year`, `month`, `day`, `hour`, `minute`, and `second`. Any other entries (including `dst`) are ignored.
		
		If the dictionary is empty, `0` is returned. If some keys are omitted, they default to the equivalent values for the Unix epoch timestamp 0 (1970-01-01 at 00:00:00).
		
		You can pass the output from `godot.Time.getDatetimeDictFromUnixTime` directly into this function and get the same as what was put in.
		
		Note: Unix timestamps are often in UTC. This method does not do any timezone conversion, so the timestamp will be in the same timezone as the given datetime dictionary.
	**/
	@:native("GetUnixTimeFromDatetimeDict")
	public static function getUnixTimeFromDatetimeDict(datetime:godot.collections.Dictionary):haxe.Int64;

	/**		
		Converts the given ISO 8601 date and/or time string to a Unix timestamp. The string can contain a date only, a time only, or both.
		
		Note: Unix timestamps are often in UTC. This method does not do any timezone conversion, so the timestamp will be in the same timezone as the given datetime string.
		
		Note: Any decimal fraction in the time string will be ignored silently.
	**/
	@:native("GetUnixTimeFromDatetimeString")
	public static function getUnixTimeFromDatetimeString(datetime:std.String):haxe.Int64;

	/**		
		Converts the given timezone offset in minutes to a timezone offset string. For example, -480 returns "-08:00", 345 returns "+05:45", and 0 returns "+00:00".
	**/
	@:native("GetOffsetStringFromOffsetMinutes")
	public static function getOffsetStringFromOffsetMinutes(offsetMinutes:haxe.Int64):std.String;

	#if doc_gen
	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, and `second`.
	**/
	@:native("GetDatetimeDictFromSystem")
	public static function getDatetimeDictFromSystem(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, and `second`.
	**/
	@:native("GetDatetimeDictFromSystem")
	public static overload function getDatetimeDictFromSystem():godot.collections.Dictionary;

	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, `hour`, `minute`, and `second`.
	**/
	@:native("GetDatetimeDictFromSystem")
	public static overload function getDatetimeDictFromSystem(utc:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, and `dst` (Daylight Savings Time).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateDictFromSystem")
	public static function getDateDictFromSystem(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, and `dst` (Daylight Savings Time).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateDictFromSystem")
	public static overload function getDateDictFromSystem():godot.collections.Dictionary;

	/**		
		Returns the current date as a dictionary of keys: `year`, `month`, `day`, `weekday`, and `dst` (Daylight Savings Time).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateDictFromSystem")
	public static overload function getDateDictFromSystem(utc:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Returns the current time as a dictionary of keys: `hour`, `minute`, and `second`.
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeDictFromSystem")
	public static function getTimeDictFromSystem(?utc:Bool):godot.collections.Dictionary;
	#else
	/**		
		Returns the current time as a dictionary of keys: `hour`, `minute`, and `second`.
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeDictFromSystem")
	public static overload function getTimeDictFromSystem():godot.collections.Dictionary;

	/**		
		Returns the current time as a dictionary of keys: `hour`, `minute`, and `second`.
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeDictFromSystem")
	public static overload function getTimeDictFromSystem(utc:Bool):godot.collections.Dictionary;
	#end

	#if doc_gen
	/**		
		Returns the current date and time as an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromSystem")
	public static function getDatetimeStringFromSystem(?utc:Bool, ?useSpace:Bool):std.String;
	#else
	/**		
		Returns the current date and time as an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromSystem")
	public static overload function getDatetimeStringFromSystem():std.String;

	/**		
		Returns the current date and time as an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromSystem")
	public static overload function getDatetimeStringFromSystem(utc:Bool):std.String;

	/**		
		Returns the current date and time as an ISO 8601 date and time string (YYYY-MM-DDTHH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
		
		If `use_space` is true, use a space instead of the letter T in the middle.
	**/
	@:native("GetDatetimeStringFromSystem")
	public static overload function getDatetimeStringFromSystem(utc:Bool, useSpace:Bool):std.String;
	#end

	#if doc_gen
	/**		
		Returns the current date as an ISO 8601 date string (YYYY-MM-DD).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateStringFromSystem")
	public static function getDateStringFromSystem(?utc:Bool):std.String;
	#else
	/**		
		Returns the current date as an ISO 8601 date string (YYYY-MM-DD).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateStringFromSystem")
	public static overload function getDateStringFromSystem():std.String;

	/**		
		Returns the current date as an ISO 8601 date string (YYYY-MM-DD).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetDateStringFromSystem")
	public static overload function getDateStringFromSystem(utc:Bool):std.String;
	#end

	#if doc_gen
	/**		
		Returns the current time as an ISO 8601 time string (HH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeStringFromSystem")
	public static function getTimeStringFromSystem(?utc:Bool):std.String;
	#else
	/**		
		Returns the current time as an ISO 8601 time string (HH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeStringFromSystem")
	public static overload function getTimeStringFromSystem():std.String;

	/**		
		Returns the current time as an ISO 8601 time string (HH:MM:SS).
		
		The returned values are in the system's local time when `utc` is false, otherwise they are in UTC.
	**/
	@:native("GetTimeStringFromSystem")
	public static overload function getTimeStringFromSystem(utc:Bool):std.String;
	#end

	/**		
		Returns the current time zone as a dictionary of keys: `bias` and `name`. The `bias` value is the offset from UTC in minutes, since not all time zones are multiples of an hour from UTC.
	**/
	@:native("GetTimeZoneFromSystem")
	public static function getTimeZoneFromSystem():godot.collections.Dictionary;

	/**		
		Returns the current Unix timestamp in seconds based on the system time in UTC. This method is implemented by the operating system and always returns the time in UTC.
		
		Note: Unlike other methods that use integer timestamps, this method returns the timestamp as a `Single` for sub-second precision.
	**/
	@:native("GetUnixTimeFromSystem")
	public static function getUnixTimeFromSystem():Float;

	/**		
		Returns the amount of time passed in milliseconds since the engine started.
		
		Will always be positive or 0 and uses a 64-bit value (it will wrap after roughly 500 million years).
	**/
	@:native("GetTicksMsec")
	public static function getTicksMsec():cs.types.UInt64;

	/**		
		Returns the amount of time passed in microseconds since the engine started.
		
		Will always be positive or 0 and uses a 64-bit value (it will wrap after roughly half a million years).
	**/
	@:native("GetTicksUsec")
	public static function getTicksUsec():cs.types.UInt64;
}
