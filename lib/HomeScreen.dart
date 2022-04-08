import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('Home Screen '),
        actions: [
          IconButton(
              onPressed: () {
                print('search clicked');
              },
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {
                print('text clicked');
              },
              icon: const Text('click')),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          // match parent for width or height
          width: double.infinity,
          color: Colors.blue,
          // or row
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical, // vertical is the default
            child: Column(
              // match parent for hight
              mainAxisSize: MainAxisSize.max,
              // gravity
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.green,
                  child: const Text('this is the first text in the body',
                      style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                      )),
                ),
                Container(
                  color: Colors.amber,
                  child: const Text('this is the second text'),
                ),
                Container(
                  color: Colors.green,
                  child: const Text('this is the first text in the body',
                      style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                      )),
                ),
                Container(
                  color: Colors.amber,
                  child: const Text('this is the second text'),
                ),
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      decoration: BoxDecoration(
                        // directional + only instead if want to make radius for spacific corner
                        // borderRadius: BorderRadiusDirectional.only(
                        //   bottomStart: Radius.circular(20)
                        // )
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomCenter,// controls the child place
                        children: [
                          const Image(
                            image: NetworkImage(
                                'https://cdn.britannica.com/84/73184-004-E5A450B5/Sunflower-field-Fargo-North-Dakota.jpg'),
                            height: 300,
                            width: 300,
                            fit: BoxFit.cover, //like scaleType
                          ),
                          Container(
                            width: double.infinity,
                            color: Colors.green.withOpacity(0.5),
                            //use symmetric to give it oer direction ver or her
                            padding: const EdgeInsets.symmetric(
                              vertical: 10
                            ),//use only if want to give different values
                            child: const Text(
                              'this is flower',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20, color: Colors.amber),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
