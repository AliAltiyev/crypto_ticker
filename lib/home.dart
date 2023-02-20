import 'package:crypto_ticker/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropDownSelectedCurrency = 'RUB';
  int cupertinoItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Currency'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //TODO add onPress
                },
                child: const Text('Click'),
              ),
            ),
            Container(
              color: Colors.black12,
              width: double.infinity,
              child: CupertinoPicker(
                itemExtent: 32.0,
                onSelectedItemChanged: (item) {
                  cupertinoItemIndex = item;
                },
                children: Data.getCupertinoPickerItems(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
