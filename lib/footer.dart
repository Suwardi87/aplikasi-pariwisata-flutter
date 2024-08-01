// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterWs extends StatelessWidget {
  const FooterWs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, 
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Text(
            'Media Sosial',
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  color: Colors.indigo,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  color: Colors.pink,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.xTwitter),
                  color: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  color: Colors.green,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.youtube),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0), // Adjust the padding value as needed
              child: Center(
                child: Text(
                  '© 2024 Wisata Sumbar',
                  style: TextStyle(
                    fontSize: 14, 
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Footer2 extends StatelessWidget {
  const Footer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Adjust the padding value as needed
      child: Center(
        child: Text(
          '© 2024 Wisata Sumbar',
          style: TextStyle(
            fontSize: 14, 
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
