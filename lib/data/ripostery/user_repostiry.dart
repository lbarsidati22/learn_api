import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:learn_api/data/api/user_api.dart';
import 'package:learn_api/data/model/result_api.dart';
import 'package:learn_api/data/model/user_app.dart';

class UserRepostiry {
  final UserApi userApi;
  UserRepostiry({required this.userApi});
  Future<ResultApi> getOneUser({
    required int userId,
  }) async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      try {
        ResultApi resultApi = await userApi.getOneUser(userId: userId);
        if (resultApi.isDone) {
          Map<String, dynamic> jsonResult = jsonDecode(resultApi.dataOrError);
          if (jsonResult.isEmpty) {
            return ResultApi<List>(isDone: true, dataOrError: []);
          } else {
            UserApp userApp = UserApp.fromJson(jsonResult);
            return ResultApi<List>(
              isDone: true,
              dataOrError: [userApp],
            );
          }
        } else {
          print(resultApi.dataOrError);
          return ResultApi(isDone: false, dataOrError: 'sme error happend');
        }
      } catch (e) {
        print('error from repo ${e.toString()}');
        return ResultApi(isDone: false, dataOrError: 'sme error happend');
      }
    } else {
      return ResultApi<String>(
          isDone: false, dataOrError: 'No available network types');
    }
  }
}
