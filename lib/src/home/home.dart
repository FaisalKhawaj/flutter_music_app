

import 'package:flutter/material.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/home/widget/featured_list_item.dart';
import 'package:flutter_music_app/src/home/widget/home_header.dart';
import 'package:flutter_music_app/src/home/widget/popular_trending_card.dart';
import 'package:flutter_music_app/widgets/row_title_more_button.dart';
import 'package:get/get.dart';

class PopularTrendingItem{
  final String title;
  final String category;
  final String image;

  PopularTrendingItem({required this.title,required this.category,required this.image});
}

class FeaturedItem{
  final String title;
  final String length;
  final String image;
  final String subcategory;

  FeaturedItem({required this.length,required this.title,required this.image,required this.subcategory});
}

class Home extends StatelessWidget {
   Home({super.key});

  void handleViewFeaturedAll(){

    Get.toNamed(Routes.featuredList);

  }
  void handleViewPopularAll(){
    Get.toNamed(Routes.popularTrending);
  }

  List<FeaturedItem> songs=[
    FeaturedItem(length: '4:19', title: 'Lucky', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg', subcategory: 'Rock'),
    FeaturedItem(length: '3:48', title: 'No Surprises',
        image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDMxMTQzMjQxM15BMl5BanBnXkFtZTgwNzAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",
        subcategory: 'Indie Rock'),
    FeaturedItem(length: '4:45', title: 'Climbing Up the Walls',
        image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5NDc5NzUwNV5BMl5BanBnXkFtZTgwMDM3MDM2NzE@._V1_.jpg",
        subcategory: 'Experimental'),
    FeaturedItem(length: '2:00', title: 'Electioneering' ,
        image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE3MzA4Nzk3NV5BMl5BanBnXkFtZTgwNjAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg",
        subcategory: 'Alternative Rock'),
    FeaturedItem(length: '1:50', title: 'Fitter Happier',
        image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNTAyNTU0NV5BMl5BanBnXkFtZTgwNzMzMDY3OTE@._V1_.jpg",
        subcategory: 'Rock'),
    FeaturedItem(length: '4:21', title: 'Karma Police',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", subcategory: 'Alternative Rock'),
    FeaturedItem(length: '6:20', title: 'Let Down',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", subcategory: 'Film Score'),
    FeaturedItem(length: "10:0", title:  "Exit Music (For a Film)",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory:"Score"),
    FeaturedItem(length: "8:0", title:  "Subterranean Homesick Alien",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory:"Score"),
    FeaturedItem(length: '6:23', title: 'Paranoid Android', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NDkwNDk5NV5BMl5BanBnXkFtZTgwNDM0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory: 'Alternative Rock'),
    FeaturedItem(length: '4:60', title: 'Airbag',   image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg",
        subcategory: 'Rock')
  ];

  List<PopularTrendingItem> listTrending=[
    PopularTrendingItem(title: 'Bored Panda', category: 'Queen', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg'),
    PopularTrendingItem(title: 'A Title', category: 'B Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzQ5ODE2MzEwM15BMl5BanBnXkFtZTgwMTMyODgxMzE@._V1_SX1500_CR0,0,1500,999_AL_.jpg'),
    PopularTrendingItem(title: 'B Title', category: 'C Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg4Njk4MzY0Nl5BMl5BanBnXkFtZTgwMzIyODgxMzE@._V1_SX1500_CR0,0,1500,999_AL_.jpg'),
    PopularTrendingItem(title: 'C Title', category: 'D Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg'),
    PopularTrendingItem(title: 'D Title', category: 'E Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const HomeHeader(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          child: Column(
            children: [

              RowTitleMoreButton(title: 'Popular & Trending', onPressed: handleViewPopularAll),
              const SizedBox(height: 20,),

              // Popular & Trending Horizotanl List
              Container(
                height: 250,
                child: ListView.builder(
                    // key: PageStorageKey<String>('popularAlbumKey'),
                    itemCount:listTrending.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                      return  PopularTrendingCard(item:listTrending[index]);

                    }),
              ),
              // Popular & Trending Horizotanl List Ends here

              const SizedBox(height: 20,),
              RowTitleMoreButton(title: 'Featured', onPressed: handleViewFeaturedAll),

              SizedBox(height: MediaQuery.of(context).size.height*0.6,
                child: ListView.builder(
                    itemCount: songs.length,
                    itemBuilder: (context,index){
                      return  FeaturedListItems(item:songs[index]);
                    }),

              )
            ],
          ),
        ),
      ),
    );
  }
}
