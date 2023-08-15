import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_data_provider.g.dart';

@riverpod
class HomeData extends _$HomeData {
  @override
  FutureOr<String> build() {
    return _getData();
  }

  Future<String> _getData() {
    return Future.delayed(const Duration(seconds: 2), () => 'Hello, Riverpod!');
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _getData());
  }
}
