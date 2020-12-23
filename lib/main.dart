import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'たいかん',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'たいかんだお'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoundCheckBox(
                    onTap: (selected) {},
                    size: 40,
                    uncheckedColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Text("頭痛はありませんか？"),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoundCheckBox(
                      onTap: (selected) {},
                      size: 40,
                      uncheckedColor: Colors.white,
                    ),
                  ),
                  Text("味覚はありますか？")
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RoundCheckBox(
                      onTap: (selected) {},
                      size: 40,
                      uncheckedColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                        "陽性者と濃厚接触者ではありませんか？",
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child:
                HorizantalPicker(
                  minValue: 34.0,
                  maxValue: 40.0,
                  divisions: 60,
                  suffix: " ℃",
                  showCursor: false,
                  backgroundColor: Colors.transparent,
                  activeItemTextColor: Colors.blue,
                  passiveItemsTextColor: Colors.grey,
                  onChanged: (value) {
                    print('$value℃ですよ');
                  },
                ),
            )
          ],
        ),
      ),

      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 2 /*optional*/,
        onTap: (int i) => print('click index=$i'),
      ),

    );
  }
}
