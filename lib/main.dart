import 'package:flutter/material.dart';
import 'package:flutter_datetime_101/intl_page.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  var nowDateTime = new DateTime.now();
  var nowDateTimeUtc;
  var inputTimeStamp = 1522129071;
  var timestampToDateTime;

  void _incrementCounter() {
    setState(() {
      _counter++;
      nowDateTimeUtc = nowDateTime.toUtc();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timestampToDateTime =
        DateTime.fromMillisecondsSinceEpoch(inputTimeStamp * 1000);
    setState(() {
      nowDateTimeUtc = nowDateTime.toUtc();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> IntlPage()));
            }
            ,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text("Now DateTime"),
                subtitle: Text(
                  nowDateTime.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime to local"),
                subtitle: Text(
                  nowDateTime.toLocal().toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime utc"),
                subtitle: Text(
                  nowDateTimeUtc.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime minute"),
                subtitle: Text(
                  nowDateTime.hour.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime minute"),
                subtitle: Text(
                  nowDateTime.minute.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime millisecond"),
                subtitle: Text(
                  nowDateTime.millisecond.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Now DateTime millisecondsSinceEpoch"),
                subtitle: Text(
                  nowDateTime.millisecondsSinceEpoch.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                title: Text("Time Stamp to DateTime"),
                subtitle: Text(timestampToDateTime.toString()),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
