import 'package:flutter/material.dart';
import 'persegi_result.dart';
void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      'Halsatu' : (BuildContext context) => new Home(),
    },
  ));
}

class Home extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int panjang = 0;
  int lebar = 0;

  var nama = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading:  new Icon(Icons.view_list),
            title: Text("Perhitungan Persegi"),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                              onChanged: (txt){
                                setState(() {
                                  panjang = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 5,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                labelText: "Panjang Persegi",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                hintText: 'Panjang'),
                          ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt){
                                setState(() {
                                  lebar = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 5,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              labelText: "Lebar Persegi",
                              suffix: Text('cm'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            hintText: 'Lebar'),
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0)),

                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: RaisedButton(
                          onPressed: (){
                            var route = new MaterialPageRoute(
                              builder: (BuildContext) => 
                              new PersegiResult(panjang_persegi: panjang, lebar_persegi: lebar),
                              );
                              Navigator.of(context).push(route);
                          },
                        padding: EdgeInsets.all(10.0),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text(
                          'Hitung Luas',
                          style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ),
                  ],
                  ),
              ),
              // PersegiResult(panjang_persegi: panjang, lebar_persegi: lebar),
            ],
          ),
        ),
    );
    }
}
      