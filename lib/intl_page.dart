
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntlPage extends StatefulWidget {
  @override
  _IntlPageState createState() => _IntlPageState();
}

class _IntlPageState extends State<IntlPage> {
  String _dateTime = DateFormat.yMMMd().format(DateTime.now());
  String customFormatt = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
  var customes = DateFormat.yMMMd();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intl Page "),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("yMMd()"),
              subtitle: Text(_dateTime),
            ),
            ListTile(
              title: Text("CustomDateTime"),
              subtitle: Text(customFormatt),
            )
          ],
        ),
      ),
    );
  }
}
