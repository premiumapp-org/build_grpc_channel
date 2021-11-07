import 'package:grpc/service_api.dart';

abstract class ChannelBuilderBase {
  ClientChannel buildChannel({
    required String host,
    int port = 443,
    bool secure = true,
  });
}
