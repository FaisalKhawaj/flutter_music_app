import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class RowTitleMoreButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RowTitleMoreButton({super.key,required this.title,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: R.textStyle.rowTitleHeading()),
        Row(children: [
          TextButton(onPressed: onPressed, child: Text('View all',style:R.textStyle.rowViewAllText())),
          IconButton(onPressed: onPressed,
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap
              ),
              constraints: const BoxConstraints(),
              icon: Icon(Icons.chevron_right,color: R.colors.viewAllButton,))
        ],)
      ],
    );
  }
}
