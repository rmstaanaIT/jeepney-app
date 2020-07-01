import 'dart:async';

import 'package:global_configuration/global_configuration.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:jeepney_app/trufi_localizations.dart';
import 'package:jeepney_app/widgets/trufi_drawer.dart';

class FeedbackPage extends StatefulWidget {
  static const String route = "/feedback";

  FeedbackPage({Key key}) : super(key: key);

  @override
  FeedBackPageState createState() => new FeedBackPageState();
}

class FeedBackPageState extends State<FeedbackPage> {
  Future<Null> _launched;

  Future<Null> _launch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      drawer: TrufiDrawer(FeedbackPage.route),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _buildFloatingActionButton(context),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final localizations = TrufiLocalizations.of(context);
    return AppBar(title: Text(localizations.menuFeedback()));
  }

  Widget _buildBody(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = TrufiLocalizations.of(context);
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text(
                  localizations.feedbackTitle(),
                  style: theme.textTheme.title.copyWith(
                    color: theme.textTheme.body2.color,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.feedbackContent(),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.feedbackContent1(),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.feedbackContent2(),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: FutureBuilder<Null>(
                  future: _launched,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return Text(snapshot.hasError ? "${snapshot.error}" : "");
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    final theme = Theme.of(context);
    final emailFeedback = GlobalConfiguration().getString("emailFeedback");
    final launchUrl = "mailto:$emailFeedback?subject=Complaint&body=Name: <br> <br>Contact Number: <br> <br>Plate Number:<br> <br>Complaint:<br> <br>";
    final  launchMes = "http://m.me/ltfrb.central.office";
    final  launchTel = "tel://1342";
    //  final launchUrl = "tel";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: theme.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email, color: theme.primaryIconTheme.color), // icon
                Text("Email",style: TextStyle(
                    color: Colors.white, fontSize: 10.0)), // text
              ],
            ),
            onPressed: () {
              setState(() {
                _launched = _launch(launchUrl);
              });
            },
            heroTag: null,
          ),
          FloatingActionButton(
            backgroundColor: theme.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Icon(Icons.call, color: theme.primaryIconTheme.color), // icon
              Text("Call",style: TextStyle(
                  color: Colors.white, fontSize: 10.0)), // text
            ],
          ),
            onPressed: () {
              setState(() {
                _launched = _launch(launchTel);
              });
            },
            heroTag: null,
          ),
          FloatingActionButton(
            backgroundColor: theme.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Icon(Icons.chat_bubble, color: theme.primaryIconTheme.color), // icon
              Text("FB",style: TextStyle(
                  color: Colors.white, fontSize: 10.0)), // text
            ],
            ),
            onPressed: () {
              setState(() {
                _launched = _launch(launchMes);
              });
            },
            heroTag: null,
          ),
        ],
      ),
    );
  }
}

