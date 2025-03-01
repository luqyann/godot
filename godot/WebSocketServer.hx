// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class implements a WebSocket server that can also support the high-level multiplayer API.

After starting the server (`godot.WebSocketServer.listen`), you will need to `godot.NetworkedMultiplayerPeer.poll` it at regular intervals (e.g. inside `godot.Node._Process`). When clients connect, disconnect, or send data, you will receive the appropriate signal.

Note: Not available in HTML5 exports.
**/
@:libType
@:csNative
@:native("Godot.WebSocketServer")
@:autoBuild(godot.Godot.buildUserClass())
extern class WebSocketServer extends godot.WebSocketMultiplayerPeer {
	/**
		`client_close_request` signal.
	**/
	public var onClientCloseRequest(get, never):Signal<(id:Int, code:Int, reason:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onClientCloseRequest():Signal<(id:Int, code:Int, reason:std.String)->Void> {
		return new Signal(this, "client_close_request", Signal.SignalHandlerIntIntStringVoid.connectSignal, Signal.SignalHandlerIntIntStringVoid.disconnectSignal, Signal.SignalHandlerIntIntStringVoid.isSignalConnected);
	}

	/**
		`client_connected` signal.
	**/
	public var onClientConnected(get, never):Signal<(id:Int, protocol:std.String)->Void>;
	@:dox(hide) @:noCompletion inline function get_onClientConnected():Signal<(id:Int, protocol:std.String)->Void> {
		return new Signal(this, "client_connected", Signal.SignalHandlerIntStringVoid.connectSignal, Signal.SignalHandlerIntStringVoid.disconnectSignal, Signal.SignalHandlerIntStringVoid.isSignalConnected);
	}

	/**
		`client_disconnected` signal.
	**/
	public var onClientDisconnected(get, never):Signal<(id:Int, wasCleanClose:Bool)->Void>;
	@:dox(hide) @:noCompletion inline function get_onClientDisconnected():Signal<(id:Int, wasCleanClose:Bool)->Void> {
		return new Signal(this, "client_disconnected", Signal.SignalHandlerIntBoolVoid.connectSignal, Signal.SignalHandlerIntBoolVoid.disconnectSignal, Signal.SignalHandlerIntBoolVoid.isSignalConnected);
	}

	/**
		`data_received` signal.
	**/
	public var onDataReceived(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) @:noCompletion inline function get_onDataReceived():Signal<(id:Int)->Void> {
		return new Signal(this, "data_received", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**		
		The time in seconds before a pending client (i.e. a client that has not yet finished the HTTP handshake) is considered stale and forcefully disconnected.
	**/
	@:native("HandshakeTimeout")
	public var handshakeTimeout:Single;

	/**		
		When using SSL (see `godot.WebSocketServer.privateKey` and `godot.WebSocketServer.sslCertificate`), you can set this to a valid `godot.X509Certificate` to be provided as additional CA chain information during the SSL handshake.
	**/
	@:native("CaChain")
	public var caChain:godot.X509Certificate;

	/**		
		When set to a valid `godot.X509Certificate` (along with `godot.WebSocketServer.privateKey`) will cause the server to require SSL instead of regular TCP (i.e. the `wss://` protocol).
	**/
	@:native("SslCertificate")
	public var sslCertificate:godot.X509Certificate;

	/**		
		When set to a valid `godot.CryptoKey` (along with `godot.WebSocketServer.sslCertificate`) will cause the server to require SSL instead of regular TCP (i.e. the `wss://` protocol).
	**/
	@:native("PrivateKey")
	public var privateKey:godot.CryptoKey;

	/**		
		When not set to `*` will restrict incoming connections to the specified IP address. Setting `bind_ip` to `127.0.0.1` will cause the server to listen only to the local host.
	**/
	@:native("BindIp")
	public var bindIp:std.String;

	@:native("new")
	public function new():Void;

	/**		
		Returns `true` if the server is actively listening on a port.
	**/
	@:native("IsListening")
	public function isListening():Bool;

	#if doc_gen
	/**		
		Sets additional headers to be sent to clients during the HTTP handshake.
		
		@param headers If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("SetExtraHeaders")
	public function setExtraHeaders(?headers:std.Array<std.String>):Void;
	#else
	/**		
		Sets additional headers to be sent to clients during the HTTP handshake.
		
		@param headers If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("SetExtraHeaders")
	public overload function setExtraHeaders():Void;

	/**		
		Sets additional headers to be sent to clients during the HTTP handshake.
		
		@param headers If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("SetExtraHeaders")
	public overload function setExtraHeaders(headers:HaxeArray<std.String>):Void;
	#end

	#if doc_gen
	/**		
		Starts listening on the given port.
		
		You can specify the desired subprotocols via the "protocols" array. If the list empty (default), no sub-protocol will be requested.
		
		If `true` is passed as `gd_mp_api`, the server will behave like a network peer for the `godot.MultiplayerAPI`, connections from non-Godot clients will not work, and `data_received` will not be emitted.
		
		If `false` is passed instead (default), you must call `godot.PacketPeer` functions (`put_packet`, `get_packet`, etc.), on the `godot.WebSocketPeer` returned via `get_peer(id)` to communicate with the peer with given `id` (e.g. `get_peer(id).get_available_packet_count`).
		
		@param protocols If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Listen")
	public function listen(port:Int, ?protocols:std.Array<std.String>, ?gdMpApi:Bool):godot.Error;
	#else
	/**		
		Starts listening on the given port.
		
		You can specify the desired subprotocols via the "protocols" array. If the list empty (default), no sub-protocol will be requested.
		
		If `true` is passed as `gd_mp_api`, the server will behave like a network peer for the `godot.MultiplayerAPI`, connections from non-Godot clients will not work, and `data_received` will not be emitted.
		
		If `false` is passed instead (default), you must call `godot.PacketPeer` functions (`put_packet`, `get_packet`, etc.), on the `godot.WebSocketPeer` returned via `get_peer(id)` to communicate with the peer with given `id` (e.g. `get_peer(id).get_available_packet_count`).
		
		@param protocols If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Listen")
	public overload function listen(port:Int):godot.Error;

	/**		
		Starts listening on the given port.
		
		You can specify the desired subprotocols via the "protocols" array. If the list empty (default), no sub-protocol will be requested.
		
		If `true` is passed as `gd_mp_api`, the server will behave like a network peer for the `godot.MultiplayerAPI`, connections from non-Godot clients will not work, and `data_received` will not be emitted.
		
		If `false` is passed instead (default), you must call `godot.PacketPeer` functions (`put_packet`, `get_packet`, etc.), on the `godot.WebSocketPeer` returned via `get_peer(id)` to communicate with the peer with given `id` (e.g. `get_peer(id).get_available_packet_count`).
		
		@param protocols If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Listen")
	public overload function listen(port:Int, protocols:HaxeArray<std.String>):godot.Error;

	/**		
		Starts listening on the given port.
		
		You can specify the desired subprotocols via the "protocols" array. If the list empty (default), no sub-protocol will be requested.
		
		If `true` is passed as `gd_mp_api`, the server will behave like a network peer for the `godot.MultiplayerAPI`, connections from non-Godot clients will not work, and `data_received` will not be emitted.
		
		If `false` is passed instead (default), you must call `godot.PacketPeer` functions (`put_packet`, `get_packet`, etc.), on the `godot.WebSocketPeer` returned via `get_peer(id)` to communicate with the peer with given `id` (e.g. `get_peer(id).get_available_packet_count`).
		
		@param protocols If the parameter is null, then the default value is Array.Empty&lt;string&gt;()
	**/
	@:native("Listen")
	public overload function listen(port:Int, protocols:HaxeArray<std.String>, gdMpApi:Bool):godot.Error;
	#end

	/**		
		Stops the server and clear its state.
	**/
	@:native("Stop")
	public function stop():Void;

	/**		
		Returns `true` if a peer with the given ID is connected.
	**/
	@:native("HasPeer")
	public function hasPeer(id:Int):Bool;

	/**		
		Returns the IP address of the given peer.
	**/
	@:native("GetPeerAddress")
	public function getPeerAddress(id:Int):std.String;

	/**		
		Returns the remote port of the given peer.
	**/
	@:native("GetPeerPort")
	public function getPeerPort(id:Int):Int;

	#if doc_gen
	/**		
		Disconnects the peer identified by `id` from the server. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectPeer")
	public function disconnectPeer(id:Int, ?code:Int, ?reason:std.String):Void;
	#else
	/**		
		Disconnects the peer identified by `id` from the server. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectPeer")
	public overload function disconnectPeer(id:Int):Void;

	/**		
		Disconnects the peer identified by `id` from the server. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectPeer")
	public overload function disconnectPeer(id:Int, code:Int):Void;

	/**		
		Disconnects the peer identified by `id` from the server. See `godot.WebSocketPeer.close` for more information.
	**/
	@:native("DisconnectPeer")
	public overload function disconnectPeer(id:Int, code:Int, reason:std.String):Void;
	#end

	@:native("GetBindIp")
	public function getBindIp():std.String;

	@:native("SetBindIp")
	public function setBindIp(ip:std.String):Void;

	@:native("GetPrivateKey")
	public function getPrivateKey():godot.CryptoKey;

	@:native("SetPrivateKey")
	public function setPrivateKey(key:godot.CryptoKey):Void;

	@:native("GetSslCertificate")
	public function getSslCertificate():godot.X509Certificate;

	@:native("SetSslCertificate")
	public function setSslCertificate(certificate:godot.X509Certificate):Void;

	@:native("GetCaChain")
	public function getCaChain():godot.X509Certificate;

	@:native("SetCaChain")
	public function setCaChain(caChain:godot.X509Certificate):Void;

	@:native("GetHandshakeTimeout")
	public function getHandshakeTimeout():Single;

	@:native("SetHandshakeTimeout")
	public function setHandshakeTimeout(timeout:Single):Void;
}
