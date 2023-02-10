import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          Title(),

          // Button section
          ButtonSection(),

          // Description
          Description()
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: const Text("In et adipisicing occaecat sint nisi eiusmod cillum qui. Proident ex ullamco eu labore incididunt proident tempor consequat aliqua deserunt consectetur labore. Et irure ad do occaecat qui proident amet velit mollit sunt."));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(fontSize: 16, color: Colors.grey, height: 2),
              )
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
            size: 30,
          ),
          const Text(
            "41",
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CutomButton(
            icon: Icons.phone,
            text: 'Call',
          ),
          CutomButton(
            icon: Icons.map,
            text: 'Route',
          ),
          CutomButton(
            icon: Icons.share_sharp,
            text: 'Share',
          )
        ],
      ),
    );
  }
}

class CutomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CutomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue, fontSize: 18),
        )
      ],
    );
  }
}
