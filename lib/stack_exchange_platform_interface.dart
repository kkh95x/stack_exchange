import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'stack_exchange_method_channel.dart';

abstract class StackExchangePlatform extends PlatformInterface {
  /// Constructs a StackExchangePlatform.
  StackExchangePlatform() : super(token: _token);

  static final Object _token = Object();

  static StackExchangePlatform _instance = MethodChannelStackExchange();

  /// The default instance of [StackExchangePlatform] to use.
  ///
  /// Defaults to [MethodChannelStackExchange].
  static StackExchangePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StackExchangePlatform] when
  /// they register themselves.
  static set instance(StackExchangePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<void> loadStack(){
    throw UnimplementedError('loadStack() has not been implemented.');
  }
}
