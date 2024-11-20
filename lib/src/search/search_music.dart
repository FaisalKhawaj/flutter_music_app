

import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/featuredlist/widget/searched_featured_item.dart';
import 'package:flutter_music_app/src/search/widget/search_item.dart';
import 'package:flutter_music_app/widgets/appbar/header_title_icon_justify_between.dart';
import 'package:flutter_music_app/widgets/search_field.dart';
import '../../../resources/resources.dart';



class SearchedItem{
  final String title;
  final String image;
  final String subcategory;

  SearchedItem({required this.title,required this.image,required this.subcategory});
}

class SearchMusic extends StatelessWidget {
   SearchMusic({super.key});

   List<SearchedItem> songs=[
     SearchedItem( title: 'Lucky Lucky Lucky Lucky', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg',subcategory: 'Rock' ),
     SearchedItem( title: 'No Surprises', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDMxMTQzMjQxM15BMl5BanBnXkFtZTgwNzAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg", subcategory: 'Indie Rock'),
     SearchedItem( title: 'Climbing Up the Walls', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5NDc5NzUwNV5BMl5BanBnXkFtZTgwMDM3MDM2NzE@._V1_.jpg", subcategory: 'Experimental'),
     SearchedItem( title: 'Electioneering' ,image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE3MzA4Nzk3NV5BMl5BanBnXkFtZTgwNjAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg", subcategory: 'Alternative Rock'),
     SearchedItem( title: 'Fitter Happier', image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNTAyNTU0NV5BMl5BanBnXkFtZTgwNzMzMDY3OTE@._V1_.jpg",subcategory: 'ABV Rock',  ),
     SearchedItem( title: 'Karma Police',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",subcategory: 'Film Score'),
     SearchedItem( title: 'Let Down',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",subcategory:"Score"),
     SearchedItem( title:  "Exit Music (For a Film)",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory:"Score" ),
     SearchedItem( title:  "Subterranean Homesick Alien",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg",subcategory: 'Alternative Rock'),
     SearchedItem( title: 'Paranoid Android', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NDkwNDk5NV5BMl5BanBnXkFtZTgwNDM0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",subcategory: 'Rockiii' ),
     SearchedItem( title: 'Airbag',   image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg",subcategory: 'Test Category')
   ];



void handleClickSetting(){

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.screenBg,
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
                  padding: EdgeInsets.only(bottom: 100),
                  itemBuilder: (context,index){
                    return SearchItem(item:songs[index]);
                  }),),


            
          ],
        ),
      ),
    );
  }
}
