import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  List<DropdownMenuItem<String>> getDropdownItems(){
      var dropdownItemList = List<DropdownMenuItem<String>>();

      for(var item in currenciesList){
        dropdownItemList.add(DropdownMenuItem(child: Text(item) , value: item,));
      }

      return dropdownItemList;
  }

  bool checkIOS(){
   return Platform.isIOS;
  }


  String selectCurrency = currenciesList.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: checkIOS() ?
            CupertinoPicker(
              backgroundColor: Colors.lightBlue,
              itemExtent: 32,
               onSelectedItemChanged: (selectedIndex){
                print(selectedIndex);
               },
              children: getDropdownItems(),
            )
            : DropdownButton(
                value: selectCurrency,
                items: getDropdownItems(),
                onChanged: (value){
                  print(value);
                }),
          ),
        ],
      ),
    );
  }
}
