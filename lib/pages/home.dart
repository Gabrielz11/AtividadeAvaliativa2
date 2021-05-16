import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:atividadeavaliativa/pages/plantas.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('../assets/img/home.png'),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 02.0, sigmaY: 02.0),
            child: new Container(
              decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
          Text(
            'Guia de Campo',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.arrow_forward_rounded),
            label: Text('INICIAR'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlantsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
