import 'package:flutter/material.dart';
import 'package:ui_chat_apps/theme.dart';
import 'package:ui_chat_apps/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: const Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            bottom: false,
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/profile.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(fontSize: 20, color: whiteColor),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(fontSize: 16, color: lightBlueColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(40)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/pic1.png',
                          name: 'Jhosuer',
                          text: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          unread: true,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/pic2.png',
                          name: 'Gabriella',
                          text: 'I saw it clearly and mig...',
                          time: '2:30',
                          unread: false,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/pic3.png',
                          name: 'Kierra',
                          text: 'I can make it if you say...',
                          time: 'yesterday',
                          unread: false,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/Group1.png',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca...',
                          time: '11:11',
                          unread: false,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/Group2.png',
                          name: 'Aston',
                          text: 'Here here we can go...',
                          time: '8:11',
                          unread: true,
                        ),
                        const ChatTile(
                          imageUrl: 'assets/images/Group3.png',
                          name: 'Bentley',
                          text: 'The car which does not...',
                          time: '7:11',
                          unread: true,
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
