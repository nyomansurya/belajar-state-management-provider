import 'package:belajar_state_management_provider/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('State Management Provider'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Amber',
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (value) {
                          applicationColor.toogleSwitch();
                        },
                      ),
                    ),
                    const Text(
                      'Light Blue',
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
