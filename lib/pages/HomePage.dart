import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerpasrtone/pages/IncremenrController.dart';
import 'package:providerpasrtone/pages/SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<IncrementController>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("${data.value}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  data.increment();
                },
                child: Text("Add")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text("SecondPage")),
          ]),
        ));
  }
}
