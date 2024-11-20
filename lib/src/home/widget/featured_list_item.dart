
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/home/home.dart'; // Import the MyItem class from homedeals.dart
import '../../../resources/resources.dart';

class FeaturedListItems extends StatelessWidget {

  final FeaturedItem item;
  FeaturedListItems({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width*0.9,
      padding: const EdgeInsets.all(10),
      margin:const EdgeInsets.only(bottom: 15),
      decoration: R.decorations.popularCardDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.network(item.image, fit: BoxFit.cover, height: 70,width: 70,),),
         const SizedBox(width: 15,),
          Expanded( child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title,style: R.textStyle.popularCardTitle(),),
              SizedBox(height: 5,),
              Text(item.subcategory,style: R.textStyle.popuplarCardSubtitle(),)
            ],)),
          Text(item.length,style: R.textStyle.popuplarCardSubtitle().copyWith(fontSize: 16))
        ],
      ),
    );
  }
}
