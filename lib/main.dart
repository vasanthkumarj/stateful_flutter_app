import 'package:flutter/material.dart';

void main()
{
  runApp(
         MaterialApp(
           title: "Stateful widgets",
           home: FavouriteCity()
         )
         );
}

class FavouriteCity extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavouriteCityState();
  }

}


class _FavouriteCityState extends State<FavouriteCity>
{

  String cityName = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
                   appBar: AppBar(title: Text("Stateful widgets")),
                   body: Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Column(
                                               children: <Widget>[
                                                                 TextField(
                                                                   onChanged: (cityNameInput)
                                                                       {
                                                                         setState(() {
                                                                           cityName = cityNameInput;
                                                                         });
                                                                       }
                                                                 ),
                                                                 Padding(
                                                                   padding: EdgeInsets.all(10.0),
                                                                   child: Text(
                                                                     "City name: $cityName",
                                                                     style: TextStyle(fontSize: 20.0),
                                                                   ),
                                                                 )
                                                                 

                                                                 ]
                                               )
                                   )
                    );
  }

}

