import '../model/http_cat_model.dart';
import '../model/user_model.dart';

abstract class IFutureService {
  Future<List<HttpCatModel>> getHttpCatList(String path);
  Future<List<UserModel>> getHttpUserModel(String path);
}
