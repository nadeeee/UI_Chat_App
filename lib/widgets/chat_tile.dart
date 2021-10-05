import 'package:flutter/material.dart';
import 'package:ui_chat_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String time;
  final String text;
  final bool unread;

  const ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unread
                      ? subtitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(time, style: subtitleTextStyle),
          ],
        ));
  }
}
