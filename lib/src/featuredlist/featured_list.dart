
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/featuredlist/widget/searched_featured_item.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_music_app/widgets/appbar/header_back_centered_title.dart';
import 'package:flutter_music_app/widgets/search_field.dart';
import '../../../resources/resources.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedItem{
  final String title;
  final String image;
  final String subcategory;

  FeaturedItem({required this.title,required this.image,required this.subcategory});
}




class FeaturedList extends StatelessWidget {
   FeaturedList({super.key});


  List<FeaturedItem> songs=[
    FeaturedItem( title: 'Lucky', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyNjkxOTk5NV5BMl5BanBnXkFtZTgwODAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg', subcategory: 'Rock'),
    FeaturedItem( title: 'No Surprises', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDMxMTQzMjQxM15BMl5BanBnXkFtZTgwNzAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg", subcategory: 'Indie Rock'),
    FeaturedItem( title: 'Climbing Up the Walls', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5NDc5NzUwNV5BMl5BanBnXkFtZTgwMDM3MDM2NzE@._V1_.jpg", subcategory: 'Experimental'),
    FeaturedItem( title: 'Electioneering' ,image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE3MzA4Nzk3NV5BMl5BanBnXkFtZTgwNjAxMTc1ODE@._V1_SX1777_CR0,0,1777,744_AL_.jpg", subcategory: 'Alternative Rock'),
    FeaturedItem( title: 'Fitter Happier', image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgxNTAyNTU0NV5BMl5BanBnXkFtZTgwNzMzMDY3OTE@._V1_.jpg", subcategory: 'Rock'),
    FeaturedItem( title: 'Karma Police',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", subcategory: 'Alternative Rock'),
    FeaturedItem( title: 'Let Down',image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5MTE3MTgwMF5BMl5BanBnXkFtZTgwOTQxMjUzMDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg", subcategory: 'Film Score'),
    FeaturedItem( title:  "Exit Music (For a Film)",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory:"Score"),
    FeaturedItem( title:  "Subterranean Homesick Alien",image:  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTAzMTczMjM3NjFeQTJeQWpwZ15BbWU4MDc1MTI1MzAx._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory:"Score"),
    FeaturedItem( title: 'Paranoid Android', image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NDkwNDk5NV5BMl5BanBnXkFtZTgwNDM0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg", subcategory: 'Alternative Rock'),
    FeaturedItem( title: 'Airbag',   image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg", subcategory: 'Rock')
  ];


  void handleBack(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:HeaderBackCenteredTitle(title: 'Featured', handleBack: handleBack),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            SearchField(),
            // Shuffle Play Row
            Padding(padding:const EdgeInsets.symmetric(vertical: 20),
              child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_circle_up_outlined,color: R.colors.primaryButtonBg,),
                  const SizedBox(width: 10,),
                  Text('Shuffle Play',style: R.textStyle.ShufflePlayText())
                ],
              ),
            ),
            // Shuffle Play Row Ends

            Divider(color: R.colors.appBarBottomBorder,),
            const SizedBox(height: 8,),

            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child:  ListView.builder(itemCount:songs.length,
                  padding: EdgeInsets.only(bottom: 200),
                  itemBuilder: (context,index){
                    return SearchedFeaturedItem(item:songs[index]);
                  }),),







          ],
        ) ,
      ),
    );
  }
}
