import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = ThemeMode.system;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myNetflixList',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      home: displaySplashImage
          ? Container(
              color: Colors.transparent,
              child: Center(
                child: Builder(
                  builder: (context) => Image.asset(
                    'assets/images/Medical_ScheduleApp_0.0.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            )
          : RegisterPageWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'homePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'homePage': HomePageWidget(),
      'myList': MyListWidget(),
      'findSeries': FindSeriesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.of(context).darkBackground,
        selectedItemColor: Colors.white,
        unselectedItemColor: FlutterFlowTheme.of(context).grayLight,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.home_rounded,
              size: 24,
            ),
            label: ' Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.date_range_outlined,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.date_range_rounded,
              size: 24,
            ),
            label: 'Appointments',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_rounded,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.favorite_rounded,
              size: 24,
            ),
            label: 'suche',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
