import 'package:stackHelpOver/future-builder/model/http_cat_model.dart';
import 'package:stackHelpOver/future-builder/model/user_model.dart';

abstract class IFutureService {
  Future<List<HttpCatModel>> getHttpCatList(String path);
  Future<List<UserModel>> getHttpUserModel(String path);
}
