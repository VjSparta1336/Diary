
import 'dart:async';
import 'package:diary/main.dart';
import "package:flutter/material.dart";

class note1 extends StatelessWidget{
  final GlobalKey<ScaffoldState>_scaffoldkey = new GlobalKey<ScaffoldState>();
  _snackbar(){
    final snackBar = new SnackBar(
        content: Text("Saved!!"),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.green,
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: _scaffoldkey,
        appBar: AppBar(
          title: Text("Add your note", style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(1),
            fontFamily: 'product sans',
            fontSize: 20,),
          ),
          leading: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
        ),

        body: Material(

            child: Container(
              child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.0),
                  child: new Center(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            TextField(
                              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),borderSide: new BorderSide()),
                                  labelText: 'Title'),
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  height: 1.0,
                                  color: Colors.black),
                              autofocus: true,


                            ),
                            SizedBox(height: 18.0),

                            TextFormField(
                              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: new BorderRadius.circular(25.0),borderSide: new BorderSide()),
                                  labelText: 'Note'),
                              scrollPadding: EdgeInsets.all(30),
                              textCapitalization: TextCapitalization.sentences,
                              style: new TextStyle(
                                  fontSize: 15.0,
                                  height: 1.0,
                                  color: Colors.black),
                              keyboardType: TextInputType.multiline,
                              maxLines: 25,

                            ),

                            RaisedButton(
                              onPressed: () {_snackbar();},
                              child: Text('SAVE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),  ),
                              color: Colors.purple,

                            ),

                          ],
                        )
                    ),
                  )
              ),
            ),


        )




    );

  }



}


