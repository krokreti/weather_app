import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../theme/my_text_theme.dart';

class DetailedImage extends StatelessWidget {
  final String imageUrl;
  final String conditionText;
  const DetailedImage(
      {super.key, required this.imageUrl, required this.conditionText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'hero-image',
          child: SizedBox(
            width: 200,
            height: 200,
            child: FittedBox(
              child: Image.network(
                'https:$imageUrl',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(conditionText, style: myTextTheme.subtitleLarge),
      ],
    );
  }
}
