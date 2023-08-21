import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_data_provider.g.dart';

@riverpod
FutureOr<String> homeData(HomeDataRef ref) {
  return Future.delayed(const Duration(seconds: 2), () => 'Hello, Riverpod!');
}
