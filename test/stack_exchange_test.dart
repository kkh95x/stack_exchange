import 'package:flutter_test/flutter_test.dart';
import 'package:stack_exchange/stack_exchange.dart';
import 'package:stack_exchange/stack_exchange_platform_interface.dart';
import 'package:stack_exchange/stack_exchange_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStackExchangePlatform
    with MockPlatformInterfaceMixin
    implements StackExchangePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
  
  @override
  Future<void> loadStack() {
    // TODO: implement loadStack
    throw UnimplementedError();
  }
}

void main() {
  final StackExchangePlatform initialPlatform = StackExchangePlatform.instance;

  test('$MethodChannelStackExchange is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStackExchange>());
  });

  test('getPlatformVersion', () async {
    StackExchange stackExchangePlugin = StackExchange();
    MockStackExchangePlatform fakePlatform = MockStackExchangePlatform();
    StackExchangePlatform.instance = fakePlatform;

    expect(await stackExchangePlugin.getPlatformVersion(), '42');
  });
}
