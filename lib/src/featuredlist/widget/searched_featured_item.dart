
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/resources.dart';


class SearchedFeaturedItem extends StatelessWidget {
  const SearchedFeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(child: Container(
      padding: const EdgeInsets.all(10),
      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: R.decorations.popularCardDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(15), child: Image.network('https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg', fit: BoxFit.cover, height: 70,width: 70,),),
          const SizedBox(width: 15,),
          Expanded( child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ss',style: R.textStyle.popularCardTitle(),),
              SizedBox(height: 5,),
              Text('sub',style: R.textStyle.popuplarCardSubtitle(),)
            ],)),
          SvgPicture.asset(
            'assets/svgs/switch.svg',
            width: 25,
            height: 25,
          )
        ],
      ),
    ),);
  }
}
