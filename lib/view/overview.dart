import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:url_launcher/url_launcher.dart';

String strInput="";
final txtControllerInput = TextEditingController();
final txtControllerResult = TextEditingController();

class Overview extends StatefulWidget{
  @override
  State createState() => new OverviewState();
}

class OverviewState extends State<Overview> {
  @override
  void initState() {
    super.initState();
    txtControllerInput.addListener((){});
    txtControllerResult.addListener((){});
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    txtControllerInput.dispose();
    txtControllerResult.dispose();
    super.dispose();
  }

  //First Row of keys
  Row buttonRowContainer_1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "7";
          }),
          child: new Text(
              "7",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "8";
          }),
          child: new Text(
              "8",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "9";
          }),
          child: new Text(
              "9",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "/";
          }),
          child: new Text(
              "/",
              style: TextStyle(fontSize: 35)
          ),
        ),
      ],
    );
  }

  //Second Row of keys
  Row buttonRowContainer_2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "4";
          }),
          child: new Text(
              "4",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "5";
          }),
          child: new Text(
              "5",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "6";
          }),
          child: new Text(
              "6",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "*";
          }),
          child: new Text(
              "x",
              style: TextStyle(fontSize: 35)
          ),
        ),
      ],
    );
  }

  //Third Row of keys
  Row buttonRowContainer_3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "1";
          }),
          child: new Text(
              "1",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "2";
          }),
          child: new Text(
              "2",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "3";
          }),
          child: new Text(
              "3",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "-";
          }),
          child: new Text(
              "-",
              style: TextStyle(fontSize: 35)
          ),
        ),
      ],
    );
  }

  //Forth Row of keys
  Row buttonRowContainer_4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + ".";
          }),
          child: new Text(
              ".",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "0";
          }),
          child: new Text(
              "0",
              style: TextStyle(fontSize: 35)
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text=(txtControllerInput.text.length>0)?(txtControllerInput.text.substring(0, txtControllerInput.text.length-1)):"";
          }),
          child: new Icon(
              Icons.backspace,
              size: 35,
              color: Colors.blueGrey
          ),
        ),

        new FlatButton(
          padding: const EdgeInsets.all(18.0),
          textColor: Colors.blueGrey,
          color: Colors.white,
          onPressed: () => setState(() {
            txtControllerInput.text = txtControllerInput.text + "+";
          }),
          child: new Text(
              "+",
              style: TextStyle(fontSize: 35)
          ),
        ),
      ],
    );
  }

  Container keypadButtonRow(){
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          buttonRowContainer_1(),
          buttonRowContainer_2(),
          buttonRowContainer_3(),
          buttonRowContainer_4(),
        ],
      ),
    );
  }

  Container buttonValue(){
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: FlatButton(
              color: Colors.white,
              textColor: Colors.blueGrey,
              onPressed: () {
                //Calculate value
                //Parse expression:
                Parser p = new Parser();
                // Bind variables:
                ContextModel cm = new ContextModel();
                Expression exp = p.parse(txtControllerInput.text);
                setState(() {
                  txtControllerResult.text=exp.evaluate(EvaluationType.REAL, cm).toString();
                });
              },
              child: Text('=',style: TextStyle(fontSize: 55),),
            ),
          ),
        ],
      ),
    );
  }

  //This returns a Column for the keypad
  Column keypadContainer() {
    return Column(
      children: <Widget>[
        keypadButtonRow(),
        buttonValue()
      ],
    );
  }
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40.0),
              child: Theme(
                data: Theme.of(context).copyWith(accentColor: Color.fromARGB(255, 253, 253, 253)),
                child: Container(
                    height: 60,
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.fromLTRB(22.0, 0, 0, 18.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Calculator',//Appbar title
                            style: TextStyle(
                                fontSize: 38.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),

                          IconButton(
                            icon: Icon(Icons.code),
                            tooltip: 'View source code',
                            color: Colors.blueGrey,
                            onPressed: ()=>launch("https://www.dicoding.com/users/127809"),
                          )
                        ],
                      ),
                    )
                ),
              ),
            ),
          ),
        ),
        body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: new TextField(
                      decoration: new InputDecoration.collapsed(hintText: ""),
                      style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.right,
                      controller: txtControllerInput,
                      onTap: ()=>FocusScope.of(context).requestFocus(new FocusNode()),
                    )
                ),

                new Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: new InputDecoration.collapsed(hintText: "0", fillColor: Colors.blueGrey,),
                      textInputAction: TextInputAction.none,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 60,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey),
                      textAlign: TextAlign.right,
                      controller: txtControllerResult,
                      onTap: (){
                        FocusScope.of(context).requestFocus(new FocusNode());
                        ClipboardManager.copyToClipBoard(txtControllerResult.text).then((result) {
                          Fluttertoast.showToast(
                              msg: "Value copied to clipboard!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIos: 1,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        });
                      },
                    )
                ),

                new Align(alignment: Alignment.centerRight,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                        child: new IconButton(icon: Icon(Icons.delete, size: 40,),
                            color: Colors.blueGrey,
                            onPressed: (){
                              setState(() {
                                txtControllerInput.text = "";
                                txtControllerResult.text = "";
                              });
                            }
                        )
                    )
                ),

                Padding(padding: EdgeInsets.all(20)),

                keypadContainer(),

              ],
            )
        )
    );
  }
}