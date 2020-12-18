import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Payme Payment'),
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
  String _cardNumber = "";
  String _cardValidation = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Karta ma\'lumotlarini kiriting'),
            Card(
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text('KARTA RAQAMI'),
                    TextFormField(
                      cursorHeight: 20,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: InputBorder.,
                        filled: true,
                        labelText: '8600 ...',
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (val) {
                        _cardNumber = val;
                      },
                    ),
                    Row(
                      children: [
                        Container(
                          child: SizedBox(
                            height: 80,
                            width: 120,
                          ),
                        ),
                        Text(
                          'YAROQLILIK MUDDATI',
                          maxLines: 2,
                        ),
                        // Column(
                        //   children: [
                        //     Text('OY/YIL'),
                        //     TextFormField(
                        //       decoration: InputDecoration(
                        //         border: UnderlineInputBorder(),
                        //         filled: true,
                        //       ),
                        //       keyboardType: TextInputType.number,
                        //       onSaved: (val) {
                        //         _cardValidation = val;
                        //       },
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '\"Davom etish\" tugmasini bosish orqali siz ommaviy oferta shartlariga rozilik bildirasiz',
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
