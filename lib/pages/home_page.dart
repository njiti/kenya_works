import 'package:flutter/material.dart';
import 'package:kenya_works/components/wall_post.dart';

import '../components/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text controller
  final textController = TextEditingController();
  // post message
  void postMessage(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text(
                "The Wall",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.grey[900],
          actions: [
            // sign out button
            IconButton(
                onPressed: (){},
                icon: const Icon(
                    Icons.logout,
                  color: Colors.white,
                ),
            )
          ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[300]
          ),
          child: Column(
            children: [
              //the wall
              Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      WallPost(
                          message: 'message',
                          user: 'user'
                      ),
                    ],
                  ),
              ),

              // post message
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    // textfields
                    Expanded(
                        child: MyTextField(
                          controller: textController,
                          hintText: 'Write something on the wall..',
                          obscureText: false,
                        )
                    ),

                    // post button
                    IconButton(
                        onPressed: postMessage,
                        icon: const Icon(Icons.arrow_circle_up),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
