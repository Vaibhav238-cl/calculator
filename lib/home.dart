import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _first = TextEditingController();
  TextEditingController _second = TextEditingController();
  TextEditingController _ans = TextEditingController();

  var op = "";
  void oprator(value) {
    var f = int.parse(_first.text);
    var s = int.parse(_second.text);
    var temp;

    if (value == "+") {
      temp = f + s;
    } else if (value == "-") {
      temp = f - s;
    } else if (value == "*") {
      temp = f * s;
    } else {
      temp = f / s;
    }
    op = value;
    _ans.text = temp.toString();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("CalCulator"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: TextField(
                      controller: _first,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "first num",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 5.0,
                          ))),
                    )),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(op),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                        child: TextField(
                      controller: _second,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "second num",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5.0,
                          ))),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: _ans,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "",
                          hintStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5.0,
                          ))),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        onPressed: () => oprator("+"),
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        onPressed: () => oprator("-"),
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        onPressed: () => oprator("*"),
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RaisedButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10.0),
                        onPressed: () {
                          oprator("/");
                        },
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 25.0),
                        ),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
