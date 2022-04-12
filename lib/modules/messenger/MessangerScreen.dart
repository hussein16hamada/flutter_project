import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/32018307?s=96&v=4'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              )),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children:
                  [
                    Icon(Icons.search,
                    ),
                    SizedBox(
                        width: 15.0),
                    Text(
                      'Search'
                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 20,),
             Container(
               height: 110,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context , index) => buildStoryItem(),
                 separatorBuilder: (context , index) =>SizedBox(
                   width: 20,
                 ) ,
                 itemCount: 5,
               ),
             ),
              SizedBox(
                height: 20,),
              ListView.separated(
                // to stop the chat list from scrolling so will can scroll all the screen not just the chat list part
                physics: NeverScrollableScrollPhysics(),
                // when want to scroll all the screen you have to add this to build all the list one time even before scrolling
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder:(context ,index)=>SizedBox(
                    height: 20,
                  ) ,
                  itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }



  // 1- build item
  // 2- build list
  // 3- add item to list


  //arrow function == if will return one thing only without any operation happens befor or after
    Widget buildChatItem() =>Row(
      children:
      [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/32018307?s=96&v=4'),
            ),
            CircleAvatar(
              radius: 9,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(
                'Hussein Hamada',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 5,),

              Row(
                children:
                [
                  Expanded(
                    child: Text(
                      'hellomy name is nicole feranco',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle
                      ),
                    ),
                  ),
                  Text(
                      ' 02:00 pm '
                  ),
                ],
              ),
            ],
          ),
        ),


      ],
    );

    Widget buildStoryItem() =>  Container(
      width: 60,
      child: Column(
        children:
        [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/32018307?s=96&v=4'),
              ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height:
          5,),
          Text(
            'Hussein Hamada',
            maxLines: 2,
            style: TextStyle(
              fontSize: 12.5,
              overflow: TextOverflow.ellipsis,
            ),
          ),

        ],
      ),
    );
}
