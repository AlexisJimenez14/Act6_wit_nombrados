import 'package:flutter/material.dart';

class PaginaUno extends StatefulWidget {
  const PaginaUno({Key? key}) : super(key: key);

  @override
  State<PaginaUno> createState() => _PaginaUno();
}

class _PaginaUno extends State<PaginaUno> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pantalla Uno'),
          backgroundColor: Color(0xffed722b),
        ),
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  if (_isPlay == false) {
                    _controller.forward();
                    _isPlay = true;
                  } else {
                    _controller.reverse();
                    _isPlay = false;
                  }
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _controller,
                  size: 100,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar'),
              ),
            ),
          ],
        ));
  }
}
