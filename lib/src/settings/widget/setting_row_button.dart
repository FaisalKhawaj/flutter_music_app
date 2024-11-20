import 'package:flutter/material.dart';
import '../../../resources/resources.dart';


class SettingRowButton extends StatelessWidget {

  final String buttonTitle;
  final IconData icon;
  final VoidCallback handleClickButton;

  const SettingRowButton({super.key,required this.buttonTitle, required this.icon,color,required this.handleClickButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:handleClickButton,
        child:  Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: R.colors.appBarBottomBorder),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(icon,color: R.colors.headerTitle,),
              const SizedBox(width: 10,),
              Expanded(child: Text(buttonTitle,style: R.textStyle.HeaderTitle().copyWith(fontWeight: FontWeight.w600,fontSize: 15),)),
              Icon(Icons.chevron_right,color: R.colors.headerTitle,)
            ],
          ),
        ),
    );
  }
}