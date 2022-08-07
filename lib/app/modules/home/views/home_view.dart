import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.title!),
          ),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                controller.searchTF(),
                SizedBox(
                  height: 10.0,
                ),
               controller. list(),
              ],
            ),
          ),
        );
      }
    );
  }
}
