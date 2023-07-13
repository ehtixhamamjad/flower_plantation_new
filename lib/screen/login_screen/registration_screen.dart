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
import 'login_screen.dart';



class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkbool = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Register",
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
                    Expanded(
                      child: Text(
                        "Create new account today to reap the benefits of a personalized shopping experience.",
                        style: hsmall.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
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
                  borderRadius: 7,
                  ontapborderRadius: 12,
                  onValidate: (val) {
                    if (val!.isEmpty) {
                      return "This field is required.";
                    }
                  },
                  obsecure: false,
                  controller: nameController,
                ),
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
                RoundTextFormField(
                  borderRadius: 7,
                  ontapborderRadius: 12,
                  onValidate: (val) {
                    if (val!.isEmpty) {
                      return "This field is required.";
                    }
                  },
                  obsecure: false,
                  controller: nameController,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 1.h,
                    ),
                    Expanded(
                      child: Text(
                        "Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our privacy policy.",
                        style: hsmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                RoundedButton(
                    backGroundColor: appthem,
                    borderRadius: 12,
                    width: 80.w, textButton: "Register", onTap: () {
                  if (_formKey.currentState!.validate()) {

                  }
                }),
                Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("Already have an account ?"),
                    TextButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        "Login",
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
