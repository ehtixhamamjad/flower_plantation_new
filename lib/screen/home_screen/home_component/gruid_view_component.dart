
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../constant/images.assets.dart';
import '../../../constant/style/app_color.dart';
import '../../../constant/style/app_textstyle.dart';

class LaptopGridProductComponent extends StatelessWidget {
  LaptopGridProductComponent({super.key});
  final List<Map<String, dynamic>> printerList = [
    {
      'image': ImageAssests.appleimage.toString(),
      'text': 'HP',
    },
    {
      'image': ImageAssests.appleimage.toString(),
      'text': 'apple',
    },
    {
      'image': ImageAssests.dellimage.toString(),
      'text': 'Dell',
    },
    {
      'image': ImageAssests.hpimage.toString(),
      'text': 'toshiba',
    },
    {
      'image': ImageAssests.dellimage.toString(),
      'text': 'tables',
    },
    {
      'image': ImageAssests.appleimage.toString(),
      'text': '2 in 1',
    },
    {
      'image': ImageAssests.dellimage.toString(),
      'text': 'Chrome',
    },
    {
      'image': ImageAssests.appleimage.toString(),
      'text': 'toshiba',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(
      height:14.5.h,
      color: colorWhite.withOpacity(0.1),
      child: ListView.builder(
        shrinkWrap: true,

        padding: EdgeInsets.symmetric(horizontal: 8),
        scrollDirection: Axis.horizontal,

        itemCount: printerList.length,
        // Replace with your actual item count
        itemBuilder:
            (BuildContext context, int index) {
          // Replace with your item widget
          return Column(
            children: [
              Card(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(
                          8)),
                  height: 10.h,
                  width: 20.5.w,
                  child: Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.only(
                        left: 3.w,
                        right: 4.w,
                        bottom: 2.h,
                        top: 2.h),
                    child: Image.asset(
                        fit: BoxFit.cover,
                        printerList[index]
                        ["image"]
                            .toString()),
                  ),
                ),
              ),
              Center(
                  child: Text(
                    printerList[index]["text"]
                        .toString(),
                    style: hMedium.copyWith(
                        fontSize: 13,
                        color: cBlack),
                  ))
            ],
          );
        },
      ),
    );
  }
}
