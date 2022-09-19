import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Info'),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.info,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.infoReverse,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text('INFO_REVERSED'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text('WARNING'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text('SUCCESS'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text('NO_HEADER'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.bottomSlide,
                    title: 'Dialog Title',
                    desc: 'Dialog description here.............',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
                child: const Text('ERROR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
