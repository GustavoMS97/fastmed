import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'FasMed'),
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
  var mensagem = 'Bem vindo a FasMed';

//Logica

//Logica

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                padding:
                    new EdgeInsets.symmetric(vertical: 100.0, horizontal: 12.4),
                child: new Text(mensagem,
                    style: TextStyle(
                        fontSize: 36.00, fontWeight: FontWeight.bold)),
              ),
              new Container(
                height: 220.0,
                width: 220.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    //image: new NetworkImage('https://picsum.photos/250?image=9'),
                    image: new NetworkImage(
                        'https://seeklogo.com/images/M/medicina-logo-886CC8F59D-seeklogo.com.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ));
  }
}
