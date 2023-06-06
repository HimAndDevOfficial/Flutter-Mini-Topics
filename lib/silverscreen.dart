import 'package:flutter/material.dart';

import 'api/UserApi.dart';
import 'model/datamodel.dart';

class SilverScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title:Text("silver example"),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background:Image.network("https://picsum.photos/200/300",
                fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context,index) {
                    return ListTile(
                      title:Text("Item $index"),
                    );
                  },
                childCount: 20,
              ),
            )
          ]
        )
    );
  }

}