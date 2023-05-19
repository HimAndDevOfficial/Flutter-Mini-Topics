import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Example"),
      ),
      body:DefaultTabController(length: 2,
          child:Container(color: Colors.black,
          child: Column(

            children: [
              TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.image),),
                    Tab(icon: Icon(Icons.card_giftcard),),
                  ]),
              Expanded(
                  child: TabBarView(
                children: [
                  ImageTab(),
                  CardTab(),
                ],
              )
              )
            ],
          ),
          )
      ) ,
    );
  }

}


class ImageTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child:Image.asset("assets/sampleimage.png",
      width: 200,height: 200,fit: BoxFit.cover,),
    );
  }

}
class CardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child:Card(child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("this is sample card",
        style: TextStyle(fontSize: 20),),
      ),),
    );
  }

}