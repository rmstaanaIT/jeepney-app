import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:jeepney_app/trufi_localizations.dart';
import 'package:jeepney_app/widgets/toggle_class.dart';
import 'package:jeepney_app/widgets/trufi_drawer.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutPage extends StatefulWidget {
  static const String route = "/about";

  @override
  State<StatefulWidget> createState() => new AboutPageState();
}

class AboutPageState extends State<AboutPage> {

  String _representatives;
  String _team;
  String _translations;
  String _routes;
  String _osm;

  @override
  void initState() {
    super.initState();
    _loadState();
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
      drawer: TrufiDrawer(AboutPage.route),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final localizations = TrufiLocalizations.of(context);
    return AppBar(
      title: Text(localizations.menuAbout()),
    );
  }

  Widget _buildBody(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle linkStyle = themeData.textTheme.body2.copyWith(color: themeData.accentColor);
    final emailInfo = GlobalConfiguration().getString("emailInfo");
    final launchUrl = "mailto:$emailInfo?subject=Complaint&body=<br> <br>";
    final theme = Theme.of(context);
    final localizations = TrufiLocalizations.of(context);
    Future<PackageInfo> packageInfo = PackageInfo.fromPlatform();

    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            new Container(
            width: 200.00,
                height: 200.00,
                decoration: new BoxDecoration(
                image: new DecorationImage(
                image: ExactAssetImage('assets/images/ic_launcher.png'),
                fit: BoxFit.fitHeight,
                ),
                )
            ),
              Container(
                alignment: Alignment(0.0, 0.0),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  localizations.title(),
                  style: theme.textTheme.title.copyWith(
                    color: theme.textTheme.body2.color,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(0.0, 0.0),
                child: new FutureBuilder(
                  future: packageInfo,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<PackageInfo> snapshot,
                  ) {
                    if (snapshot.hasError ||
                        snapshot.connectionState != ConnectionState.done) {
                      return Text("");
                    }
                    return Text(
                      localizations.version(snapshot.data.version),
                      style: theme.textTheme.body2,
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.tagline(),
                  style: theme.textTheme.subhead.copyWith(
                    color: theme.textTheme.body2.color,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.aboutContent(),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.teamSectionRepresentatives(_representatives),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.teamSectionTeam(_team),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.teamSectionTranslations(_translations),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  localizations.teamSectionRoutes(_routes, _osm),
                  style: theme.textTheme.body2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0),
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
              ),
/*              Container(
                padding: EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text(localizations.aboutLicenses()),
                  onPressed: () {
                    return showLicensePage(
                      context: context,
                      applicationName: localizations.title(),
                    );
                  },
                ),
              ),*/
             /* Container(
                padding: EdgeInsets.only(top: 16.0),
                child: InkWell(
                  child: new Text(
                    localizations.aboutOpenSource(),
                    style: linkStyle,
                  ),
                  onTap: () => { launch('https://github.com/trufi-association/trufi-app') }
                ),
              ),*/
            ],
          ),
        )
      ],
    );
  }
}
