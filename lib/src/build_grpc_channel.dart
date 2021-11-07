import 'package:grpc/service_api.dart';

import 'build_channel.dart' if (dart.library.js) './build_channel_web.dart'
    as _channel_builder;

ClientChannel buildGrpcChannel({
  required String host,
  int port = 443,
  bool secure = true,
}) =>
    _channel_builder.ChannelBuilder()
        .buildChannel(host: host, port: port, secure: secure);
