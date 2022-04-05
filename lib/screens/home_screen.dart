import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String route = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Personal App'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          ClipOval(
            child: Image(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/35090164?s=80')),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Daniel Sanchez Fernandez',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
            'conejodan@gmail.com',
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ThemeContainer(
                color: Colors.blue.shade400,
                title: 'Flutter Training',
                icon: Icons.settings,
              ),
              ThemeContainer(
                color: Colors.green.shade300,
                title: 'My Info',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ThemeContainer extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;

  const ThemeContainer({
    Key? key,
    this.color = Colors.blue,
    required this.title,
    this.icon = Icons.circle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        width: 200,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.white,
                    child: Icon(
                      icon,
                      color: color,
                      size: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
