import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Home'),
            centerTitle: true,
            foregroundColor: Colors.cyan,
            backgroundColor: Colors.blueAccent,
            actions: [
                IconButton(
                    icon: const Icon(Icons.help),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Container(
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(16),
                            color: Colors.black12,
                            height: 100,
                            width: 50,
                            alignment: Alignment.bottomCenter,
                            child: const Text('Hello World!'),
                        ) ,
                      ),
                    );
                  },
                )
            ],
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
        ),
        children: List.generate(
        100,
        (index) => Container(
          color: Colors.deepPurple,
          child: Center(
            child: Text(
              '$index',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    ),
    );
  }
}