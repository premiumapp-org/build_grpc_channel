import 'package:grpc/grpc.dart';
import 'package:grpc/service_api.dart' as api;
import 'channel_builder_base.dart';

class ChannelBuilder extends ChannelBuilderBase {
  @override
  api.ClientChannel buildChannel({
    required String host,
    int port = 443,
    bool secure = true,
  }) {
    host = host.replaceFirst('http://', '').replaceFirst('https://', '');
    return ClientChannel(host,
        port: port,
        options: ChannelOptions(
            credentials: secure
                ? ChannelCredentials.secure()
                : ChannelCredentials.insecure()));
  }
}
