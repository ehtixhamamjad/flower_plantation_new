

import 'package:flower_plantation_new/screen/login_screen/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../constant/padding.dart';
import '../../constant/style/app_color.dart';
import '../../constant/style/app_textstyle.dart';
import '../../reuseable_widgets/Textform_Field.dart';
import '../../reuseable_widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkbool = false;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Login",style: hsmall.copyWith(fontSize: 19,color: colorWhite),
        ),
        backgroundColor: appthem,
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Padding(
            padding: padA5,
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 1.h,
                    ),
                    Text(
                      "Welcome back! Sign in to your account.",
                      style: hsmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 1.h,
                    ),
Text("Name or  Email",style: hsmall,),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                RoundTextFormField(
                    borderRadius: 6,
                    ontapborderRadius: 6,

                    controller: nameController, obsecure: false),
                // RoundTextFormField(
                //   borderRadius: 1,
                //
                //
                //   obsecure: false,
                //   controller: nameController,
                // ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 1.h,
                    ),
                    Text("Password",style: hsmall,),
                    Text(
                      "*",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(

                  child: TextFormField(
                    cursorColor: appthem,
                    textAlign: TextAlign.left,
                    style: TextStyle(

                    ),

                    obscureText: true,
                    controller: passwordController,



                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: appthem, // Set your desired border color
                            // Set the border width
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8),
                        hintStyle: TextStyle(


                        ),


                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                              color: cGrey
                              ,

                            )
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: cRed
                          ),

                        ),

                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: cGrey
                            ),

                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                ListTile(
                    trailing: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password",
                        style: hsmall.copyWith(color: cRed),
                      ),
                    )),
                CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Remember me",
                    style: hsmall,
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: checkbool,
                  onChanged: (bool? value) {

                    setState(() {
                      checkbool = value!;
                    });
                  },
                ),
                RoundedButton(
                    borderRadius: 8,

                    backGroundColor: appthem,
                    width: 80.w,
                    textButton: "Login",
                    onTap: () {


                    }),
                Row(
                  children: [
                    SizedBox(
                      width: 13.w,
                    ),
                    Text("New in our app ?"),
                    TextButton(
                      onPressed: () {
                        Get.to(() => RegistrationScreen());
                      },
                      child: Text(
                        "Create Account",
                        style: hsmall.copyWith(color: appthem),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
