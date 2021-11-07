The package for building grpc channel depending on is it web or not
## Features

- The util builds gRPC channel for flutter web or other platforms conditionally, depending on the runtime environment

## Usage

```dart
const webAppPort = 8888;
const someGrpcServicePort = 5555;
const host = 'http://127.0.0.1';

// for web I suggest to use Envoy as a proxy routing from webAppPort to someGrpcServicePort
int get port => kIsWeb ? webAppPort : someGrpcServicePort;

class SomeGrpcService {
  late final SomeGrpcClient stub;

  SomeGrpcService() {
    init();
  }

  void init() {
    final channel = buildGrpcChannel(host: host, port: port, secure: false);
    stub = SomeGrpcClient(channel);
  }

  Future<SomeRpcResponse> someRpc(SomeRpcRequest request) {
    final response = stub.sendQuestion(request);
    return response;
  }
}
```