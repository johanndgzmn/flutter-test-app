import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FYOUCat'),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('Actions');
                },
                icon: const Icon(Icons.info_outline))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('image/3x.png'),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text('This is a text widget.',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSwitch ? Colors.green : Colors.blue,
                  ),
                  onPressed: () {
                    debugPrint('Elevated Button');
                  },
                  child: const Text('Elevated Button')),
              OutlinedButton(
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                  child: const Text('Outlined Button')),
              TextButton(
                  onPressed: () {
                    debugPrint('Text Button');
                  },
                  child: const Text('Text Button')),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    debugPrint('Row tapped');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.blue,
                      ),
                      Text('Row Widget'),
                      Icon(Icons.local_fire_department, color: Colors.blue)
                    ],
                  )),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  })
            ],
          ),
        ));
  }
}
