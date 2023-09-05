
import 'package:flutter/cupertino.dart';

class CardPlanetData{

  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;
  
  const CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.subtitleColor,
    required this.titleColor,
    required this.background
  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet({super.key, required this.data});
  final CardPlanetData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40
          ),
          child: Column(
            children: [
              
              const Spacer(flex: 5,),
              Flexible(
                flex: 20,
                child: Image(image: data.image)
                ),
                const Spacer(flex: 1,),
              Text(
                data.title.toUpperCase(),
                style: TextStyle(
                  color: data.titleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
              ),
                const Spacer(flex: 1,),
              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
                const Spacer(flex: 10,)
            ],
          ),
        ),
      ],
    );
  }
}