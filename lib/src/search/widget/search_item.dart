
import 'package:flutter/material.dart';
import 'package:flutter_music_app/app_export.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/widgets/BottomSheetAudioPlayer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/resources.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class SearchItem extends StatelessWidget {
  final SearchedItem item;
  SearchItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        showCupertinoModalBottomSheet(
          context: context,
          builder: (context) => Bottomsheetaudioplayer(item:item)
        );
        // Getx.
        // Get.toNamed(Routes.featuredList);
      },
      child: SizedBox(child: Container(
        padding: const EdgeInsets.all(10),
        margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                Text( item.title,maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: R.textStyle.popularCardTitle(),),
                SizedBox(height: 5,),
                Text(item.subcategory,style: R.textStyle.popuplarCardSubtitle(),)
              ],)),
            SvgPicture.asset(
              'assets/svgs/switch.svg',
              width: 25,
              height: 25,
            )
          ],
        ),
      ),),
    );
  }
}
