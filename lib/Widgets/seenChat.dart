import 'package:flutter/material.dart';

Padding seenChat(String name, String message, String hour) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25.0), // Radio de borde circular
          child: Image.asset(
            'assets/user.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              message,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF8d8d8d),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              hour,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF8d8d8d),
              ),
            ),
            SizedBox(height: 36.0),
          ],
        ),
      ],
    ),
  );
}
