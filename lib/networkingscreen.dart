import 'package:flutter/material.dart';

import 'api/UserApi.dart';
import 'model/datamodel.dart';

class NetworkingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        title: Text("Networking Example Screen"),),
        body: FutureBuilder<List<DataModel>>(
          future: UserApi.fetchUsers(),
          builder: (context,snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child:CircularProgressIndicator(),
              );
            } else if(snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              final users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                  itemBuilder: (context,index){
                   final user = users[index];
                   return ListTile(
                     title: Text(user.name),
                     subtitle: Text(user.age.toString()),
                     leading: Text(user.colour),
                   );
                  });
            }
          },
        )
    );
  }

}