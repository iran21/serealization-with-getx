import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:serealization_app/app/data/repository/posts.repository.dart';
import 'package:serealization_app/app/data/service/api.dart';
import 'package:serealization_app/app/modules/home/home.controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: MyRepository(
          provider: MyApiClient(),
        ),
      ),
    );
  }
}
