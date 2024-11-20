import 'package:flutter/material.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resources/resources.dart';


class SubscribeCard extends StatelessWidget {
  const SubscribeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            decoration: R.decorations.subscriptionCardDecoration(),
            child: Row(
              children: [
                SvgPicture.asset(SvgConstant.premium,width: 40,height: 40,),
                const SizedBox(width: 15,),
                Expanded(child:    Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Get Pro Version',style: R.textStyle.HeaderTitle().copyWith(fontSize: 18),),
                    Text('Remove All Ads',style: R.textStyle.HeaderTitleText(),)
                  ],)),
                IconButton(onPressed: (){},icon: Icon(size: 30, Icons.chevron_right,color: R.colors.headerTitle),)
              ],
            ),
          )
        ],
      ),
    ),);
  }
}
