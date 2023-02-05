import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("İlham Ver"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranGenisligi / 4,
              child: Image.asset("images/steve.png"),
            ),
          ),
          Text(
            "Steve Jobs",
            style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi / 25),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
                left: ekranGenisligi / 100, right: ekranGenisligi / 100),
            child: Text(
              "Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: ekranGenisligi / 25),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranGenisligi/6,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "İlham Ver",
                    style: TextStyle(
                        fontSize: ekranGenisligi / 25, color: Colors.white),
                  ),
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),),
            ),
          ),
        ],
      ),
    );
  }
}
