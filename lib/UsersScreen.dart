import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem() ,
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
          itemCount:15,
      ),
    );
  }

  Widget buildUserItem ()=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 25,
          child: Text(
            '1',
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
              'Hussein Hamada',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '01149122694',
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
