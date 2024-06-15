import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'stack_exchange_platform_interface.dart';

/// An implementation of [StackExchangePlatform] that uses method channels.
class MethodChannelStackExchange extends StackExchangePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('stack_exchange');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  
  @override
  Future<void> loadStack() async{
   await methodChannel.invokeMethod<String>('loadStack');
  }
}
