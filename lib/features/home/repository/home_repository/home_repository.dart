import 'package:mvvmpattern/data/network/network_api_service.dart';
import 'package:mvvmpattern/features/home/model/user_list_model.dart';
import 'package:mvvmpattern/res/app_url.dart';

class HomeRepository {
  final _apiService = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.userListApi);
    return UserListModel.fromJson(response);
  }
}
