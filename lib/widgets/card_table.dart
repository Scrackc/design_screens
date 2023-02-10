import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              Icons.grid_view_rounded,
              Colors.blue,
              "Galery",
            ),
            _SingleCard(
              Icons.bus_alert,
              Colors.pinkAccent,
              "Trasnport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              Icons.grid_view_rounded,
              Colors.deepPurple,
              "Galery",
            ),
            _SingleCard(
              Icons.bus_alert,
              Colors.cyan,
              "Trasnport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              Icons.grid_view_rounded,
              Colors.amber,
              "Galery",
            ),
            _SingleCard(
              Icons.bus_alert,
              Colors.green,
              "Trasnport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              Icons.grid_view_rounded,
              Colors.blue,
              "Galery",
            ),
            _SingleCard(
              Icons.bus_alert,
              Colors.pinkAccent,
              "Trasnport",
            ),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SingleCard(this.icon, this.color, this.text);

  @override
  Widget build(BuildContext context) {
    Color lighten(Color color, [double amount = .1]) {
      assert(amount >= 0 && amount <= 1);

      final hsl = HSLColor.fromColor(color);
      final hslLight =
          hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

      return hslLight.toColor();
    }

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [lighten(color, .28), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0, 0.65],
                ),
                borderRadius: BorderRadius.circular(200)),
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          // CircleAvatar(
          //   backgroundColor: color,
          //   radius: 30,
          //   child: Icon(
          //     icon,
          //     size: 35,
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
