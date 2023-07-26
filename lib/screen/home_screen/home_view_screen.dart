import 'package:flower_plantation_new/constant/padding.dart';
import 'package:flower_plantation_new/constant/spacing.dart';
import 'package:flower_plantation_new/constant/style/app_textstyle.dart';
import 'package:flower_plantation_new/screen/product_details/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'dart:io';
import '../../constant/images.assets.dart';
import '../../constant/style/app_color.dart';
import '../../reuseable_widgets/app_textform_field.dart';
import 'home_component/Lise_View_component.dart';
import 'home_component/gruid_view_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
              elevation: 0,
              iconTheme: IconThemeData(color: cDarkGray, size: 30),
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: colorWhite,
                  statusBarIconBrightness: Brightness.dark),
              expandedHeight: 80,
              // Set the desired height for the app bar when expanded
              floating: true,
              // Allow the app bar to float when scrolling
              pinned: true,
              actions: [],
              backgroundColor: colorWhite,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                title: ReuseTextField(
                  fontSize: 9,
                  height: 3.6.h,
                  borderRadius: 4,
                  width: 62.w,
                  hinttext: "What are you looking for ?",
                  hintTextColor: cBlack.withOpacity(0.4),
                  ontapborderRadius: 4,
                  fill: true,
                  fillcolor: cGrey.withOpacity(0.1),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 6, left: 4),
                    child: Icon(
                      Icons.search_sharp,
                      size: 18,
                      color: cBlack.withOpacity(0.6),
                    ),
                  ),
                  obsecure: false,
                  controller: searchController,
                ),
                background: Container(
                  child: Column(
                    children: [],
                  ),
                ),
              )

              // Customize the app bar as needed
              ),

          // Add other slivers or content here

          // Your SliverAppBar configuration...
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     LaptopGridProductComponent(),
            //   ],
            // ),
            Padding(
              padding: padA1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "List of Items",
                    style: hMedium.copyWith(color: cBlack, fontSize: 14.sp),
                  ),
                  vSpac12,
                  LaptopListViewProductComponent()
                ],
              ),
            ),

            Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(()=>ProductDetails());
                          },
                            child: widgetProductitem(Colors.blue)),
                        widgetProductitem(Colors.orange),
                      ],
                    ),
                    SizedBox(height: 3.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widgetProductitem(Colors.red),
                        widgetProductitem(Colors.cyan),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    )));
  }
  Widget widgetProductitem(color){
    return   Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue.withOpacity(0.4),
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15,
                  spreadRadius: 2)
            ],
          ),
          width: 46.w,
          height: 26.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                      child: Text(
                        "View ALL flower",
                        style: hMedium.copyWith(
                            color: colorWhite,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold),
                      )),
                  Text(
                    "Total flower:20",
                    style:
                    hsmall.copyWith(color: colorWhite),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 26.w,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(19),
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(60),
                ),
                color: Colors.white.withOpacity(0.4),
              ),
              height: 10.h,
              width: 20.w,
              child: Center(
                  child: Icon(
                    Icons.location_city,
                    color: colorWhite,
                  ))),
        ),
      ],
    );
  }

}
