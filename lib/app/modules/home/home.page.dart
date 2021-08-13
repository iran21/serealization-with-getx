import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serealization_app/app/app.controller.dart';
import 'package:serealization_app/app/modules/home/home.controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var isLoading = true;
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
          child: controller.postList.length < 1
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.postList[index].title!),
                      subtitle: Text(controller.postList[index].body!),
                    );
                  },
                  itemCount: controller.postList.length,
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          isLoading = !await controller.getAll();
        },
      ),
    );
  }
}
