import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'details_controller.g.dart';

@riverpod
class DetailsController extends _$DetailsController {
  @override
  String build() {
    return 'initial';
  }

  void changeValue() {
    state = 'new state';
  }
}
