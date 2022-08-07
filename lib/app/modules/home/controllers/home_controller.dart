import 'package:data_modeling_filtering/models/users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../services/debouncer.dart';
import '../../../../services/services.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final debouncer = Debouncer(milliseconds: 1000);
  Users? users;
  String? title;
  @override
///list
  Widget list() {
    return Expanded(
      child: GetBuilder<HomeController>(
        builder: (context) {
          return ListView.builder(
            itemCount: users!.users == null ? 0 : users!.users.length,
            itemBuilder: (BuildContext context, int index) {
              return row(index);

            },
          );
        }
      ),
    );

  }
  ///
  /// list row
  Widget row(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              users!.users[index].name,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              users!.users[index].email.toLowerCase(),
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
  ///search tf
  Widget searchTF() {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5.0,
            ),
          ),
        ),
        filled: true,
        fillColor: Colors.white60,
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Filter by name or email',
      ),
      onChanged: (string) {
        debouncer.run(() {

            title = 'Searching...';
            update();
          Services.getUsers().then((usersFromServer) {

              users = Users.filterList(usersFromServer, string);
              title = title;
              update();
          });
        });
      },
    );

  }
  void onInit() {

    super.onInit();
    title = 'Loading users...';
    users = Users();
    Services.getUsers().then((usersFromServer) {

        users = usersFromServer;
        title = title;

    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
