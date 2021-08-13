import 'package:get/get.dart';
import 'package:serealization_app/app/data/model/user.model.dart';
import 'package:serealization_app/app/data/repository/posts.repository.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository});

  //use o snippet getfinal para criar está variável
  var _postsList = <MyModel>[].obs;
  List<MyModel> get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  ///função para recuperar todos os posts
  Future<bool> getAll() async {
    bool response = false;
    repository.getAll().then((data) {
      this.postList = data;
      response = true;
    });
    return response;
  }
}
