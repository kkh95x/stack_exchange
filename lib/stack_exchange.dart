
import 'stack_exchange_platform_interface.dart';

class StackExchange {
  Future<String?> getPlatformVersion() {
    return StackExchangePlatform.instance.getPlatformVersion();
  }
   Future<void> loadStackEx() async{
    return await StackExchangePlatform.instance.loadStack();
  }
}
