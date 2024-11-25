import 'package:learn_api/config/extention/strnig.dart';
import 'package:learn_api/data/model/result_api.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<ResultApi> getOneUser({
    required int userId,
  }) async {
    try {
      var url = Uri.parse('/$userId'.baseUrlWithUser);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return ResultApi(
          isDone: true,
          dataOrError: response.body,
        );
      } else {
        return ResultApi(isDone: false, dataOrError: response.body);
      }
    } catch (e) {
      print(e.toString());
      return ResultApi(isDone: false, dataOrError: 'some error');
    }
  }
}
