import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> slideAnimation,
  }) : _slideAnimation = slideAnimation;

  final Animation<Offset> _slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _slideAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: _slideAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        }
    );
  }
}
