import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
 int counter =1;

 @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
           TextButton(
             onPressed: ()
           {
             setState(() {
               counter --;
             });

           },
             child: Text(
             'MINUS'
           ),),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
               '${counter}',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                // rebuild the build method to change the screen
                setState(() {
                  counter ++;
                });
              }
              , child: Text(
                'PLUS'
            ),),

          ],
        ),
      ),
    );
  }
}
