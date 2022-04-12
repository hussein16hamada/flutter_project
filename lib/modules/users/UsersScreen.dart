import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user/UserModel.dart';


class UserScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(1, 'Hussein Hamada', '01149122694'),
    UserModel(2, 'Hussein ', '01149122694'),
    UserModel(3, ' Hamada', '112694'),
    UserModel(4, 'Husseada', '01149122694'),
    UserModel(5, 'einHada', '014922694'),
    UserModel(6, 'Hussad', '011491226'),
    UserModel(1, 'Hussein Hamada', '01149122694'),
    UserModel(2, 'Hussein ', '01149122694'),
    UserModel(3, ' Hamada', '112694'),
    UserModel(4, 'Husseada', '01149122694'),
    UserModel(5, 'einHada', '014922694'),
    UserModel(6, 'Hussad', '011491226'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]) ,
          separatorBuilder: (context, index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount:users.length,
      ),
    );
  }

  Widget buildUserItem (UserModel user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 25,
          child: Text(
           '${user.id}',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(
              user.name,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
             user.phone,
              style: TextStyle(
                  color: Colors.grey
              ),
            ),


          ],
        )

      ],
    ),
  );
}
