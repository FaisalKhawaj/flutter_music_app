

import 'package:flutter/material.dart';

class SearchMusic extends StatelessWidget {
  const SearchMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Search')
          ],
        ),
      ),
    );
  }
}
