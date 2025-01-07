import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_snail_profile/Widgets/title_bar.dart';
import 'package:mvc_pattern_snail_profile/controllers/user_controller.dart';

class ProfileEdit extends StatelessWidget {
  UserController controller = Get.put(UserController());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              TitleBar(
                icon: Icon(Icons.arrow_back_ios),
                pageTitle: 'Account Edit',
                callbackFunction: () => Get.back(),
              ),
              SizedBox(
                height: 160,
              ),
              myTextField(Icon(Icons.perm_identity), 'Name', nameController,
                  'User Name'),
              myTextField(Icon(Icons.mail), 'Email', emailController, 'Email'),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.userUpdate(
                        nameController.text, emailController.text);
                    // controller.update();
                    Get.back();
                  },
                  child: Text('Update'))
            ],
          ),
        ),
      ),
    );
  }
}
