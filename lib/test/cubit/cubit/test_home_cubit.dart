import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_home_state.dart';

class TestHomeCubit extends Cubit<TestHomeState> {
  TestHomeCubit() : super(TestHomeInitial());
  getdata() {
    print('object');
  }

  onUser() {}
  allUsers() {}
}
