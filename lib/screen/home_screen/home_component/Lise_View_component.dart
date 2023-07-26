
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../constant/images.assets.dart';
import '../../../constant/padding.dart';
import '../../../constant/style/app_color.dart';
import '../../../constant/style/app_textstyle.dart';

class LaptopListViewProductComponent extends StatelessWidget {
  LaptopListViewProductComponent({super.key});
  final List<Map<String, dynamic>> printerList = [
    {
      'image': ImageAssests.flawer1.toString(),
      'text': 'HP',
    },
    {
      'image': ImageAssests.flawer2.toString(),
      'text': 'apple',
    },
    {
      'image': ImageAssests.flawer3.toString(),
      'text': 'Dell',
    },
    {
      'image': ImageAssests.flawer4.toString(),
      'text': 'toshiba',
    },
    {
      'image': ImageAssests.flawer5.toString(),
      'text': 'tables',
    },
    {
      'image': ImageAssests.flawer2.toString(),
      'text': '2 in 1',
    },
    {
      'image': ImageAssests.flawer4.toString(),
      'text': 'Chrome',
    },
    {
      'image': ImageAssests.flawer3.toString(),
      'text': 'toshiba',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Get.to(()=>HpLaptopDetailsScreen(lessPriceProduct:"AED 700 " ,priceProduct:"AED 1000 " ,));
      },
      child: Container(
        height: 36.h,
        color: cGrey.withOpacity(0.1),
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: printerList.length,
          // Replace with your actual item count
          itemBuilder:
              (BuildContext context, int index) {
            // Replace with your item widget
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Text(""),
                      SizedBox(
                        width: 33.w,
                      ),
                      Padding(
                        padding: padA5,
                        child: Container(
                            decoration: BoxDecoration(
                                color: cGrey,
                                borderRadius:
                                BorderRadius
                                    .circular(
                                    30)),
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.favorite_border,
                              size: 16,
                              color:colorWhite,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(
                              8)),
                      height: 14.h,
                      width: 35.w,
                      child: Image.asset(
                          fit: BoxFit.cover,
                          printerList[index]["image"]
                              .toString()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7,bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [
                                Container(
                                  width: 39.w,
                                  child: Text(
                                    "Dell  Laptop  Latitude",
                                    maxLines: 1,
                                    style: hsmall.copyWith(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 10.sp,
                                        color: cBlack
                                            .withOpacity(
                                            0.9)),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 4.0,),
                            Row(
                              children: [
                                Container(
                                  width: 39.w,
                                  child: Text(
                                      "Dell Latitude 340 |\n Intel Core I5 8th Generation ",
                                      maxLines: 2,
                                      style: hxMedium
                                          .copyWith(

                                          overflow: TextOverflow.ellipsis,
                                          fontSize:
                                          11).copyWith(
                                          color: cBlack
                                              .withOpacity(
                                              0.8))),
                                ),
                              ],
                            ),
                            Text("AED 700 ", style:hsmall.copyWith(
                                fontSize: 10.sp,
                                color: cBlack
                                    .withOpacity(
                                    0.6))),
                            Text(
                              "AED 1000 ",
                              style: hsmall.copyWith(
                                  fontSize: 10.sp,
                                  decoration: TextDecoration.lineThrough,
                                  color: cGrey
                                      .withOpacity(
                                      0.6)),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),



                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
