

import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/featuredlist/widget/searched_featured_item.dart';
import 'package:flutter_music_app/src/search/widget/search_item.dart';
import 'package:flutter_music_app/widgets/appbar/header_title_icon_justify_between.dart';
import 'package:flutter_music_app/widgets/search_field.dart';
import '../../../resources/resources.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';



class SearchedItem{
  final String title;
  final String image;
  final String subcategory;
  final String songUrl;


  SearchedItem({required this.title,required this.image,required this.subcategory,required this.songUrl,});
}

class SearchMusic extends StatelessWidget {
   SearchMusic({super.key});

   List<SearchedItem> songs=[
     SearchedItem(

         songUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3', title: 'Lucky Lucky Lucky Lucky',
         image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg',subcategory: 'Rock' ),
     SearchedItem( image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDMxMTQzMjQxM15BMl5BanBnXkFtZTgwNzAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",
         songUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
         title: 'No Surprises',
         subcategory: 'Indie Rock'),
     SearchedItem(     image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5NDc5NzUwNV5BMl5BanBnXkFtZTgwMDM3MDM2NzE@._V1_.jpg",
         songUrl: 'https://archive.org/download/testmp3testfile/mpthreetest.mp3',title: 'Climbing Up the Walls', subcategory: 'Experimental'),
     SearchedItem(        image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE3MzA4Nzk3NV5BMl5BanBnXkFtZTgwNjAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",
         songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title: 'Electioneering' , subcategory: 'Alternative Rock'),
     SearchedItem(        image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNTAyNTU0NV5BMl5BanBnXkFtZTgwNzMzMDY3OTE@._V1_.jpg",
       songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title: 'Fitter Happier',subcategory: 'ABV Rock',  ),
     SearchedItem(image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title: 'Karma Police',subcategory: 'Film Score'),
     SearchedItem(image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',title: 'Let Down', subcategory:"Score"),
     SearchedItem(image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title:  "Exit Music (For a Film)", subcategory:"Score" ),
     SearchedItem(image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title:  "Subterranean Homesick Alien",subcategory: 'Alternative Rock'),
     SearchedItem( image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NDkwNDk5NV5BMl5BanBnXkFtZTgwNDM0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg", songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3', title: 'Paranoid Android',subcategory: 'Rockiii' ),
     SearchedItem( image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg",songUrl: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',title: 'Airbag', subcategory: 'Test Category')
   ];



void handleClickSetting(){

}
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
        const SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.8,
              child:  ListView.builder(itemCount:songs.length,
                  padding:const EdgeInsets.only(bottom: 100),
                  itemBuilder: (context,index){
                    return SearchItem(item:songs[index]);
                  }),),


            
          ],
        ),
      ),
    );
  }
}
