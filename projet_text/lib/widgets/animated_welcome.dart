import 'package:flutter/material.dart';

class AnimatedWelcome extends StatefulWidget {
  @override
  _AnimatedWelcomeState createState() => _AnimatedWelcomeState();
}

class _AnimatedWelcomeState extends State<AnimatedWelcome> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FadeTransition(
          opacity: _animation,
          child: Text(
            'BIENVENUE AU TOURISME LOCAL DU BURKINA FASO',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
