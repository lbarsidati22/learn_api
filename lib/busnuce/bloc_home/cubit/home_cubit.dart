import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_api/data/model/result_api.dart';
import 'package:learn_api/data/ripostery/user_repostiry.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final UserRepostiry userRepostiry;
  HomeCubit({required this.userRepostiry}) : super(HomeInitial());
  Future<void> getOneUser() async {
    print('start getting data');
    ResultApi resultApi = await userRepostiry.getOneUser(userId: 2);
    if (resultApi.isDone) {
      print('done${resultApi.dataOrError}');
    } else {
      print('error${resultApi.dataOrError}');
    }
  }
}
