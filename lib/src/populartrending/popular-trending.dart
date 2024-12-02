
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/home/widget/popular_trending_card.dart';
import 'package:flutter_music_app/src/populartrending/widgets/PopularItem.dart';
import 'package:flutter_music_app/theme/app_colors.dart';
import 'package:flutter_music_app/widgets/appbar/header_back_centered_title.dart';
import 'package:flutter_music_app/widgets/search_field.dart';
import '../../../resources/resources.dart';

class PopularTrendingItem{
  final String title;
  final String category;
  final String image;

  PopularTrendingItem({required this.title,required this.category,required this.image});
}

class PopularTrending extends StatelessWidget {
   PopularTrending({super.key});

  void handleBack(){

  }

  List<PopularTrendingItem> listPopular=[
    PopularTrendingItem(title: 'Bored Panda', category: 'Queen', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg'),
    PopularTrendingItem(title: 'A Title', category: 'A Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMzQ5ODE2MzEwM15BMl5BanBnXkFtZTgwMTMyODgxMzE@._V1_SX1500_CR0,0,1500,999_AL_.jpg'),
    PopularTrendingItem(title: 'B Title', category: 'B Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTg4Njk4MzY0Nl5BMl5BanBnXkFtZTgwMzIyODgxMzE@._V1_SX1500_CR0,0,1500,999_AL_.jpg'),
    PopularTrendingItem(title: 'C Title', category: 'C Category', image: 'https://images-na.ssl-images-amazon.com/images/M/MV5BMTgyMzI5NDc5Nl5BMl5BanBnXkFtZTgwMjM0MTI2MDE@._V1_SY1000_CR0,0,1498,1000_AL_.jpg'),
    PopularTrendingItem(title: 'D Title', category: 'D Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
    PopularTrendingItem(title: 'E Title', category: 'E Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
    PopularTrendingItem(title: 'F Title', category: 'F Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
    PopularTrendingItem(title: 'G Title', category: 'G Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
    PopularTrendingItem(title: 'H Title', category: 'H Category',
      image:   "https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
        appBar:HeaderBackCenteredTitle(title: 'Popular & Trending'),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchField(),
          const  Padding(padding: EdgeInsets.symmetric(vertical: 20),
            child:     Divider(height: 1,color: AppColors.cardBorder,) ,
          ),


          Expanded(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  itemCount:listPopular.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 4, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                    childAspectRatio: 0.76, // Adjust this to control the height/width ratio
                  ),
                  itemBuilder: (context,index){
                    return PopularItem(item:listPopular[index]);
                  } ),
            ) ,
          ),






        ]
    ));
    }
}
