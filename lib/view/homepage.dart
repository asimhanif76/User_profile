import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_pattern_snail_profile/Widgets/title_bar.dart';
import 'package:mvc_pattern_snail_profile/controllers/user_controller.dart';
import 'package:mvc_pattern_snail_profile/utils/app_textstyle.dart';
import 'package:mvc_pattern_snail_profile/view/profile_edit.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  UserController controller = Get.put(UserController());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            TitleBar(
              icon: Icon(Icons.arrow_back_ios),
              pageTitle: 'Account',
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: height * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.016,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                          onTap: () => Get.to(ProfileEdit()),
                          leading: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwRPWpO-12m19irKlg8znjldmcZs5PO97B6A&s"))),
                          ),
                          title:
                              Obx(() => Text(controller.user.value.userName)),
                          subtitle: Obx(
                            () => Text(
                              controller.user.value.email,
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Tap on Profile Picture',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: nameController,
                        onChanged: (value) {
                          // controller.userUpdate(userName, email)
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: 'Enter Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: emailController,
                        onChanged: (value) {
                          // controller.userUpdate(userName, email)
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          // controller.user.value.userName = nameController.text;
                          controller.userUpdate(
                              nameController.text, emailController.text);
                          controller.update();
                          // setState(() {});
                        },
                        child: Text('Update'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
