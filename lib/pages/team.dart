import 'package:flutter/gestures.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:global_configuration/global_configuration.dart';
import 'package:jeepney_app/trufi_models.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:jeepney_app/blocs/preferences_bloc.dart';
import 'package:jeepney_app/pages/website.dart';
import 'package:jeepney_app/trufi_localizations.dart';
import 'package:jeepney_app/widgets/toggle_class.dart';
import 'package:jeepney_app/widgets/trufi_drawer.dart';

class TeamPage extends StatefulWidget {
  static var haha;
  static const String route = "/team";

  @override
  State<StatefulWidget> createState() => new TeamPageState();
}

class TeamPageState extends State<TeamPage> {


  String _representatives;
  String _team;
  String _translations;
  String _routes;
  String _osm;



  @override
  void initState() {
    super.initState();
    _loadState();
    _getData();
  }

  Future<List> _getData() async{

    final response=await http.get("https://metrojip1.000webhostapp.com/get.php");

    // return json.decode(response.body);
    var datauser = json.decode(response.body);

    if(ToggleClass.isOnn){

      for (var i = 0; i < datauser.length ; i++){
        if(datauser[i]['commuter']=='regular') {
          setState(() {
            ToggleClass.oo = double.parse(datauser[1]['fare']);
            ToggleClass.ii= double.parse(datauser[1]['addkm']);

          });
        }
        else if(datauser[i]['commuter']=='discounted') {
          setState(() {
            ToggleClass.oo = double.parse(datauser[i]['fare']);
            ToggleClass.ii= double.parse(datauser[i]['addkm']);

          });
        }

      }




    }
    /*else if(ToggleClass.isOnn == false){
      setState(() {
        ToggleClass.oo = double.parse(datauser[0]['fare']);
        ToggleClass.ii= double.parse(datauser[0]['addkm']);
      });
    }*/
    else{
      for (var i = 0; i < datauser.length ; i++){
        if(datauser[i]['commuter']=='discounted') {
          setState(() {
            ToggleClass.oo = double.parse(datauser[0]['fare']);
            ToggleClass.ii= double.parse(datauser[0]['addkm']);

          });
        }
        else if(datauser[i]['commuter']=='regular') {
          setState(() {
            ToggleClass.oo = double.parse(datauser[i]['fare']);
            ToggleClass.ii= double.parse(datauser[i]['addkm']);

          });
        }

      }


    }

    return datauser;

  }

  void _loadState() async {
    const joinSep = ", ";
    final attributions = Map<String, List<dynamic>>
      .from(GlobalConfiguration().get("attributions"));
    setState(() {
      _representatives = attributions["representatives"].join(joinSep);
      _team = attributions["team"].join(joinSep);
      _translations = attributions["translations"].join(joinSep);
      _routes = attributions["routes"].join(joinSep);
      _osm = attributions["osm"].join(joinSep);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      drawer: TrufiDrawer(TeamPage.route),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final localizations = TrufiLocalizations.of(context);
    return AppBar(title: Text(localizations.menuTeam()));
  }
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  Widget _buildBody(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = TrufiLocalizations.of(context);
    //final emailInfo = GlobalConfiguration().getString("emailInfo");
    final launchUrl = "https://twitter.com/LTFRB/status/1016892835826577409";
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[



                ],
              ),
              /*Container(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: localizations.teamContent() + " ",
                        style: theme.textTheme.body2,
                      ),
                      TextSpan(
                        text: emailInfo,
                        style: theme.textTheme.body2.copyWith(
                          color: theme.accentColor,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(launchUrl);
                          },
                      ),
                      TextSpan(
                        text: ".",
                        style: theme.textTheme.body2,
                      ),
                    ],
                  ),
                ),
              ),*/
              Container(

                child: Text(
                  localizations.fare3(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF1E232F)
                  ),
                ),
              ),
              Container(

                child: _buildDiscountToggle(context),

              ),

              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.fare1(),
                  style: theme.textTheme.body2,
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: new InkWell(
                  child: Text(
                    localizations.fare2(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Color(0xFF6C7380)
                    ),
                  ),
                  onTap: () =>
                      launch(launchUrl),
                )

              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.fare5(),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.fare4(),
                  style: theme.textTheme.body2,
                ),
              ),
              RaisedButton(
                child: Text("Update Fare"),
                  onPressed: () => _handleSubmit(context),
                /*onPressed: ()
                async {
                  await _getData();
                  Navigator.pop(context);
                  CircularProgressIndicator();
                }*/
              ),
            ],
          ),
        )
      ],
    );



  }
  Future<void> _handleSubmit(BuildContext context) async {
    try {

      Dialogs.showLoadingDialog(context, _keyLoader);//invoking login
      await _getData();
      Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();//close the dialoge
      Navigator.pop(context);
    } catch (error) {
      print(error);
    }
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
            title: Text(isOn ? "Discounted: PWD/Senior/Student"  : "Regular",
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

/*  Widget _buildOnlineData(BuildContext context) {


    return FutureBuilder <OnlineData>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.fare.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }*/
}
class Dialogs {

  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  backgroundColor: Color(0xFF3D485E),
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 10,),
                        Text("Updating....",style: TextStyle(color: Colors.white),)
                      ]),
                    )
                  ]));
        });
  }
}