// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:odc_hackathon/Component/textFeild.dart';
import 'package:odc_hackathon/constant.dart';
import 'package:get/get.dart';
import 'package:odc_hackathon/controller/register_controller.dart';
import 'package:odc_hackathon/views/signup/PrivacyPolicy.dart';


import '../login/login.dart';

class SignUp extends StatelessWidget {
  TextEditingController nameController= TextEditingController();
  SignUp({Key? key}) : super(key: key);
  var _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {// controller
    final _controller = Get.put(RegisterController());

    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Obx(
              () => _controller.loading.value
              ? Center(
            child: CircularProgressIndicator(),
          )
              : SingleChildScrollView(
            child: SafeArea(
              child: SizedBox(
                height: hight,
                child: Stack(
                  children: [
                    // corner
                    Positioned(
                        top: -35,
                        right: -35,
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/2.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: -50,
                        left: -50,
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),

                    //content join screen

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 50, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 90,
                              child: Form(
                                key: _key,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "Hello,",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Friend!",
                                          style: TextStyle(
                                              color: Color(0xffFF6600),
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("Sign Up",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //name
                            TextFeild(
                              controller: nameController,
                              validator: (String? val) {
                                if (val!.isEmpty) {
                                  return 'Name should not be empty';
                                } else {
                                  return null;
                                }
                              },
                              name: 'Full Name',
                              icon: const Icon(Icons.person_outline_outlined),
                              obscureText: false,
                              keyboardType: TextInputType.name,
                              onChange: (v) {
                                _controller.name.value = v;
                              },
                            ),
                            //email
                            TextFeild(

                              name: 'E-mail',
                              icon: const Icon(Icons.email_outlined),
                              obscureText: false,
                              validator: (val) {
                                if (val.isEmpty || !val.contains('@')) {
                                  return 'Invalid email';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              onChange: (v) {
                                _controller.email.value = v;
                              },
                            ),
                            //password
                            TextFeild(

                              validator: (val) {
                                if (val.isEmpty || val.length < 11) {
                                  return 'password Number is to short';
                                }
                                return null;
                              },
                              name: 'password number',
                              icon: const Icon(Icons.password),
                              obscureText: false,
                              keyboardType: TextInputType.phone,
                              onChange: (v) {
                                _controller.password.value = v;
                              },
                            ),
                            TextFeild(

                              validator: (val) {
                                if (val.isEmpty || val.length < 11) {
                                  return 'Phone Number is to short';
                                }
                                return null;
                              },
                              name: 'Phone number',
                              icon: const Icon(Icons.phone),
                              obscureText: false,
                              keyboardType: TextInputType.phone,
                              onChange: (v) {
                                _controller.phone.value = v;
                              },
                            ),
                            TextFeild(

                              name: 'Address',
                              validator: (val) {
                                if (val.isEmpty || val.length < 15 ){
                                  return 'Password is to short';
                                }
                                return null;
                              },
                              icon: const Icon(Icons.location_on),
                              obscureText: false,
                              keyboardType: TextInputType.streetAddress,
                              onChange: (v) {
                                _controller.address.value = v;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  const Text("Do you agree to our"),
                                  TextButton(
                                    onPressed: () =>
                                        Get.to(const PrivacyPolicy()),
                                    child: const Text(
                                      'Privacy Policy',
                                      style:
                                      TextStyle(color: Color(0xffFF6600)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {

                                  _controller.register(context);



                              },
                              child: Container(
                                width: width * 0.75,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Constant.primary,
                                ),
                                child: const Text(
                                  "Join Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Already Have an Account?  ',
                                    style: TextStyle(fontSize: 16)
                                        .copyWith(color: Colors.black),
                                  ),
                                  GestureDetector(
                                    onTap: ()=>Get.to(Login()),
                                    child: Text(
                                      'login  ',
                                      style: TextStyle(fontSize: 16)
                                          .copyWith(color: Constant.primary),
                                    ),

                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
