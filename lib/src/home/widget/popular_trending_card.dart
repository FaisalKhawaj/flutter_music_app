import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/home/home.dart'; // Import the MyItem class from homedeals.dart

import '../../../resources/resources.dart';

class PopularTrendingCard extends StatelessWidget {

  final PopularTrendingItem item;


  PopularTrendingCard({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.48,
      padding: const EdgeInsets.all(15),
      margin:const EdgeInsets.only(right: 17),
      decoration: R.decorations.popularCardDecoration(),
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
