import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,0.5
          ],
          colors: [
            Color(0xff76ebce),
            Color(0xff30BAD6),
          ],
        ),
      ),
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: const[
          Page1(),
        Page2(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        // Background
        Background(),
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "11°",
            style: textStyle,
          ),
          Text(
            "Miércoles",
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      color: const Color(0xff30BAD6),
      child: Image(image: const AssetImage('assets/scroll-1.png')),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Bienvenido",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
