import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart' as api;

import 'channel_builder_base.dart';

class ChannelBuilder extends ChannelBuilderBase {
  @override
  api.ClientChannel buildChannel({
    required String host,
    int port = 443,
    bool secure = true,
  }) {
    return GrpcWebClientChannel.xhr(Uri.parse('$host:$port'));
  }
}
