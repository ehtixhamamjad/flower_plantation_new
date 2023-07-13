import 'dart:io';

import 'package:flower_plantation_new/constant/style/app_color.dart';
import 'package:flower_plantation_new/constant/style/app_textstyle.dart';
import 'package:flower_plantation_new/reuseable_widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  File? imageTemp;
  ImagePicker imagePicker = ImagePicker();

  Future<void> pickImageFromCamera() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.camera);


      // Process the picked image

       setState(() {
         if (pickedFile != null) {
           imageTemp = File(pickedFile.path);
         } else {
           print("'not upload image");
         }
       });
      // ...

  }
  Future<void> pickImageFromGallery() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);


    // Process the picked image

    setState(() {
      if (pickedFile != null) {
        imageTemp = File(pickedFile.path);
      } else {
        print("'not upload image");
      }
    });
    // ...

  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: appthem,
        centerTitle: true,
        title: Text("Image",style: hMedium.copyWith(color: colorWhite), ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (() {
                    pickImageFromGallery();
                  }),
                  child: Column(
                    children: [
                      Mycontainer(Icons.camera_alt),
                      Text(
                        'Camera',

                      )
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      pickImageFromGallery();
                    },
                    child: Column(
                      children: [
                        Mycontainer(Icons.image),
                        Text(
                          'Gallery',
                          // style: AppTextStyles.labelSmall.copyWith(
                          //     fontSize: 13.sp, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black)),
                margin: EdgeInsets.symmetric(vertical: 30.sp),
                height: 40.h,
                width: 40.h,
                child: imageTemp == null
                    ? Center(
                  child: Text(
                    'Your Image is here',
                    // style: AppTextStyles.labelSmall,
                  ),
                )
                    : ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.file(
                      imageTemp!.absolute,
                      fit: BoxFit.cover,
                     ),
                )),
            // Obx(
            //       () => imageupdatecontroller.loadingupdateimage.value
            //       ? const CircularProgressIndicator()
            //       : imageupdatecontroller.errorloadingupdateimage.value != ""
            //       ? Center(
            //     child: Text(imageupdatecontroller
            //         .errorloadingupdateimage.value),
            //   )
            //       : CustomButton(
            //     onPressed: () {
            //       imageupdatecontroller
            //           .updateprofileimage(imageTemp!);
            //       Future.delayed(const Duration(milliseconds: 500));
            //     },
            //     text: 'Upload Image',
            //   ),
            // ),

            RoundedButton(
                backGroundColor: appthem,
                textButton: "Save", onTap: (){})
          ],
        ),
      ),
    );
  }
  Mycontainer(icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      // height: 50,
      // width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, )),
      child: Padding(
        padding: const EdgeInsets.all(23),
        child: Icon(
          icon,
          size: 40,
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
