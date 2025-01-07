import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_snail_profile/model/user_model.dart';

class UserController extends GetxController {
  var user = UserModel(
    userName: 'Asim Hanif',
    email: 'asimhanif15@gmail.com',
    password: '',
    number: '',
  ).obs;

  // RxString name = ''.obs;
  void userUpdate(
    String userName,
    String email,
  ) {
    user.update((user) {
      user?.userName = userName;
      user?.email = email;
      user?.password = '';
      user?.number = '';
    });

    // user.value.userName = userName;
    // user.value.email = userName;
    // user.value.number = userName;
    // user.value.password = userName;
    // name.value = userName;
    // user(Usermodel(userName: userName, email: email, number: '', password: ''));
    print('username value:${user.value.userName}');
    print('Email value:${user.value.email}');
    // update();
    // refresh();
  }
}

class userimageController extends GetxController {
  var imageModel = userImageModel(
          path:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwRPWpO-12m19irKlg8znjldmcZs5PO97B6A&s")
      .obs;
  void updateImage(path) {
    imageModel.update((Value) {
      Value?.path = path;
    });
  }
}
