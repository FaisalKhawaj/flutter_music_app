import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_music_app/src/searchmusiccategory/search_music_category.dart';
import 'package:get/get.dart';


class MusicCategoryItem extends StatelessWidget {
  final SearchedCategoryItem item;

  const MusicCategoryItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Get.toNamed(Routes.searchMusic);
      },
      child: Container(
        // width: 200,
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color :item.bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 0.2,sigmaY: 0.2,),
          child:   Stack(
            children: [
              Positioned(
                right: -15,
                bottom: -5,
                child: Transform.rotate(
                  angle: -0.7, // Slant the image
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item.image, // Replace with your image URL
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(left: 10,top:20, child: SvgPicture.asset(SvgConstant.audioRing,width: 40,height: 40,)),

              Positioned(left: 10, top: 70,
                  child: SizedBox(
                    width: 160, // Constrain width
                    child: Text(
                      item.title,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Ellipsis for overflow
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
