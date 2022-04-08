import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// stl shortcut to create class
class LoginScreen extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // to center scrollable view
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  // to wrap what inside then can pass and use it anywhere else
                  controller: emailController,
                  keyboardType:TextInputType.emailAddress,
                  onSubmitted: (text)
                  {
                   // print(text);
                  },
                  onChanged: (changingText){

                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                        Icons.email
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  controller: passwordController,
                  keyboardType:TextInputType.visiblePassword,
                  obscureText: true,
                  onSubmitted: (text)
                  {
                    // print(text);
                  },
                  onChanged: (changingText){

                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                        Icons.lock
                    ),
                    suffixIcon: Icon(
                        Icons.visibility
                    ),

                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: MaterialButton(
                      onPressed: (){
                        print(emailController.text + passwordController.text);
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'Don\'t have an account?'
                    ),
                    TextButton(
                      onPressed: (){}
                      , child: Text(''
                        'Register Now'),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}