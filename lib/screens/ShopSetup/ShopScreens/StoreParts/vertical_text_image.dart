import 'package:flutter/material.dart';

class VerticalTextImage extends StatelessWidget {
  const VerticalTextImage({
    super.key,
    required this.title, required this.image, this.onTap,
  });

  final String title,image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),fit: BoxFit.cover,color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 8.0,),
            SizedBox(
              width: 55,
              child: Text(title, style: const TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                  textAlign: TextAlign.center,
              ),
            )
          ],
        )
      ),
    );
  }
}
