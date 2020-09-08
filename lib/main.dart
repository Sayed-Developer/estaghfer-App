import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(estaghfer());

class estaghfer extends StatefulWidget {
  @override
  _estaghferState createState() => _estaghferState();
}

class _estaghferState extends State<estaghfer> {
  List<Image> balance = [
    Image.asset('images/PNGHunt1.png'),
    Image.asset('images/PNGHunt2.png'),
  ];
  int count = 0;
  int balanceCount = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        appBar: AppBar(
//          title: Center(
//              child: Text(
//            'إستغفر',
//            style: TextStyle(fontStyle: FontStyle.italic),
//          )),
//          backgroundColor: Colors.green,
//        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/blue-black.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'وَمَا كَانَ اللَّهُ مُعَذِّبَهُمْ وَهُمْ يَسْتَغْفِرُونَ',
                  style: TextStyle(
                      fontFamily: 'sayed',
                      fontSize: 30.0,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'مره',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'reem',
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen[200]),
                    ),
                    Text(
                      ' $count',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'إستغفرت ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'reem',
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen[200],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
//                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      child: FloatingActionButton(
                        highlightElevation: 50.0,
                        child: Image.asset('images/unnamed.png'),
                        onPressed: () {
                          setState(() {
                            count++;
                            if (count >= 100) {
                              balanceCount = 1;
                            } else {
                              balanceCount = 0;
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 45.0,
                      height: 45.0,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.green[700],
                          child: Icon(Icons.settings_backup_restore),
                          onPressed: () {
                            setState(() {
                              count = 0;
                              balanceCount = 0;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: balance[balanceCount],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
