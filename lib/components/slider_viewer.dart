import 'package:flutter/material.dart';
import 'package:oncoknow/components/slider.dart';

// import '../components/slider.dart';

class MyProductTile2 extends StatelessWidget {
  final News news;

  const MyProductTile2({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(18),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 320,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    news.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // product name
              Text(
                news.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              const SizedBox(height: 25),

              // product description
              Text(
                news.description,
                style: TextStyle(color: Theme.of(context).colorScheme.inverseSurface),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
