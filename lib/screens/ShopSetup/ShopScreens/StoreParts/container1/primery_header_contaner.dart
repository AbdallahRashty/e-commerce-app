import 'package:flutter/material.dart';
import '../curvededges/curved_edgeed_w.dart';
import 'circular_container.dart';

class PrimeryHeaderContaner extends StatelessWidget{
  const PrimeryHeaderContaner({
    super.key,
    required this.child,
    this.height = 400,
  });
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgedW(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularContainer(
                    backgroundColor: Colors.white.withOpacity(0.1), width: 400, height: 400, radius: 400, showBorder: true,
                  )
              ),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularContainer(
                      backgroundColor: Colors.white.withOpacity(0.1), width: 400, height: 400, radius: 400, showBorder: true,
                  )
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: child,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

