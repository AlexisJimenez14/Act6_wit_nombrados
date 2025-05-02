import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Seis',
          style: TextStyle(
            color: Colors.black, // Color de la letra blanco
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Color(0xffed722b),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedPhysicalModel(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  elevation: _isFlat ? 0 : 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: const SizedBox(
                    height: 120.0,
                    width: 120.0,
                    child: Icon(Icons.android_outlined),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Click'),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
      ),
    );
  }
}
