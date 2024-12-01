import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/populartrending/popular-trending.dart'; // Import the MyItem class from homedeals.dart
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../resources/resources.dart';

class PopularItem extends StatelessWidget {

  final PopularTrendingItem item;


  PopularItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return  Container(

      width: MediaQuery.of(context).size.width*0.45,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      // margin:const EdgeInsets.only(right: 17),
      decoration: R.decorations.popularCardDecoration().copyWith(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(16),
            child: Image.network(item.image,fit:BoxFit.cover,
              height: 150,width: double.infinity,),
          ),
          const SizedBox(height: 10,),
          Text(item.title,style: R.textStyle.popularCardTitle()),
          const SizedBox(height: 5,),
          Text(item.category,style: R.textStyle.popuplarCardSubtitle(),)
        ],
      ),
    );
  }
}
