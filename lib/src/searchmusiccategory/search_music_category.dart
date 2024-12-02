import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/searchmusiccategory/musiccategoryitem/music_category_item.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_music_app/widgets/appbar/header_title_icon_justify_between.dart';
import 'package:flutter_music_app/widgets/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/resources.dart';

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255, // Opacity (0-255)
    random.nextInt(256), // Red (0-255)
    random.nextInt(256), // Green (0-255)
    random.nextInt(256), // Blue (0-255)
  );
}

class SearchedCategoryItem{
  final String title;
  final String image;
  final Color bgColor;

  SearchedCategoryItem({
    required this.title,
    this.bgColor =const Color(0xFF000000),
    required this.image,
  });




// SearchedCategoryItem({required this.title,required this.image,required this.color});
}

class SearchMusicCategory extends StatelessWidget {
   SearchMusicCategory({super.key});



   List<SearchedCategoryItem> songsCategory=[
     SearchedCategoryItem( title: 'Lucky Lucky Lucky Lucky',bgColor:  getRandomColor(), image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg',),
     SearchedCategoryItem( title: 'No Surprises', bgColor: getRandomColor(), image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDMxMTQzMjQxM15BMl5BanBnXkFtZTgwNzAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",),
     SearchedCategoryItem(    bgColor: getRandomColor(), title: 'Climbing Up the Walls', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5NDc5NzUwNV5BMl5BanBnXkFtZTgwMDM3MDM2NzE@._V1_.jpg", ),
     SearchedCategoryItem( bgColor: getRandomColor(),title: 'Electioneering' ,image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE3MzA4Nzk3NV5BMl5BanBnXkFtZTgwNjAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",),
     SearchedCategoryItem(bgColor: getRandomColor(), title: 'Fitter Happier', image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNTAyNTU0NV5BMl5BanBnXkFtZTgwNzMzMDY3OTE@._V1_.jpg", ),
     SearchedCategoryItem(bgColor: getRandomColor(), title: 'Karma Police',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",),
     SearchedCategoryItem(bgColor: getRandomColor(), title: 'Let Down',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", ),
     SearchedCategoryItem(bgColor: getRandomColor(), title:  "Exit Music (For a Film)",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg",),
     SearchedCategoryItem(bgColor: getRandomColor(), title:  "Subterranean Homesick Alien",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg",),
     SearchedCategoryItem(bgColor: getRandomColor(), title: 'Paranoid Android', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NDkwNDk5NV5BMl5BanBnXkFtZTgwNDM0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg", ),
   ];

   void handleClickSetting(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
      appBar: HeaderTitleIconJustifyBetween(title: 'Search', handleButtonClick: handleClickSetting),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SearchField(),


            const SizedBox(height: 40,),


            // SizedBox(
            // child: ListView.builder(
            //
            //     itemCount: songsCategory.length,
            //     itemBuilder: (context,index){
            //   return  MusicCategoryItem(item:songsCategory[index]);
            // }),
            // ),
            
            
         SizedBox(
           height: MediaQuery.of(context).size.height*0.8,
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 15),
             child: GridView.builder(
               padding: EdgeInsets.only(bottom: 200),
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent:130, childAspectRatio:1.7, mainAxisSpacing:20,crossAxisSpacing: 20, crossAxisCount: 2,),
                 itemCount: songsCategory.length,
                 itemBuilder: (context,index){
                   return  MusicCategoryItem(item:songsCategory[index]);
                 }),
           ),)












          ],
        ),
      ),
    );
  }
}
