
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jeepney_app/trufi_localizations.dart';
import 'package:jeepney_app/trufi_models.dart';

import 'package:http/http.dart' as http;
import 'package:jeepney_app/blocs/preferences_bloc.dart';
import 'package:jeepney_app/widgets/toggle_class.dart';





class WebsitePage extends StatefulWidget{
  static double haha;
  static const String route = "/website";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WebsitePageState();
  }
}
class WebsitePageState extends State<WebsitePage>{

  Future<List> getData() async{

    final response=await http.get("https://metrojip1.000webhostapp.com/get.php");

   // return json.decode(response.body);
    var datauser = json.decode(response.body);
    if(datauser.length==0){
      setState(() {

      });
    }else{
      if(ToggleClass.isOnn){

      }else if(ToggleClass.isOnn == false){

      }

      setState(() {

      });

    }

    return datauser;

  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    var futureBuilder = new FutureBuilder<List>(
      future: getData(),
      builder: (context,snapshot){
        if(snapshot.hasError)
          print(snapshot.error);
        return snapshot.hasData
            ?new ItemList1(list: snapshot.data,)
            :new Center(
          child: new CircularProgressIndicator(),
        );
      },
    );
    // TODO: implement build
    return new Scaffold(
      appBar: _buildAppBar(context),


      body: futureBuilder,
    );
  }
}

Widget _buildAppBar(BuildContext context) {
  final localizations = TrufiLocalizations.of(context);
  return AppBar(title: Text(localizations.menuTeam()));
}

class ItemList1 extends StatelessWidget{

  final List list;
  ItemList1({this.list});
  static var oo;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = TrufiLocalizations.of(context);
    //final emailInfo = GlobalConfiguration().getString("emailInfo");
    final launchUrl = "https://twitter.com/LTFRB/status/1016892835826577409";
    // TODO: implement build
    return new ListView.builder(

      itemCount: list==null?0:list.length,

      itemBuilder: (BuildContext context, int index){
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                      child: Text(
                        (ToggleClass.isOnn ?   list[1]['addkm'] :  list[0]['addkm'])
                        ,style: theme.textTheme.body2,),

                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                      child: Text(
                        (ToggleClass.isOnn ?   "on1" :  "off2" ),
                        style: theme.textTheme.body2,
                      ),
                    ),

                  ],
                ),

              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            )
          ],
        );

      },

    );

  }

  Widget _buildDiscountToggle(BuildContext context) {

    final preferencesBloc = PreferencesBloc.of(context);
    final theme = Theme.of(context);
    final localizations = TrufiLocalizations.of(context);
    return StreamBuilder(
        stream: preferencesBloc.outChangeOn,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          bool isOn = snapshot.data == true;
          ToggleClass.isOnn = isOn;
          return SwitchListTile(
            title: Text(isOn ? "Discounted: PWD/Senior/Student" : "Regular",
                style: theme.textTheme.body2),
            value: isOn,
            onChanged: preferencesBloc.inChangeOn.add,
            activeColor: Colors.red,
            inactiveTrackColor: Color(0xFFBDBDBD),
            inactiveThumbColor: theme.primaryColor,
            secondary: Icon(isOn ? Icons.accessible : Icons.accessibility),

          );

        }
    );
  }


}