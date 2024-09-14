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
                            child: const Text('Hello World!'),
                            height: 100,
                            width: 50,
                            alignment: Alignment.bottomCenter,
                        ) ,
                      ),
                    );
                  },
                )
            ],
        ),
        body: Column(
          children: [
            Flexible(
              child: Container(
                color: Colors.orange,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Container(
                          color: Colors.orange,
                          alignment: Alignment.center,
                          child: const Text(
                            'Selamat Datang',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.lightGreenAccent,
              ),
            ),
          ],
        ),
            );
  }
}