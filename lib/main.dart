import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// My Imports
import 'package:google_fonts/google_fonts.dart';
import 'package:tyba/src/bloc/provider.dart' as validatorProvider;
import 'package:tyba/src/pages/error_page.dart';
import 'package:tyba/src/preferences/user_preferences.dart';
import 'package:tyba/src/routes/routes.dart';

 
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new UserPreferences();
  await prefs.initPrefs();

  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new UserPreferences();
    print( 'Desde Main: ${prefs.email} - ${prefs.token}');

    return validatorProvider.Provider(
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xff073a32),
          accentColor: Color(0xfff57c24),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'EN'), // English, no country code
          const Locale('es', 'ES'), // Spanish, no country code
        ],
        initialRoute: (prefs.token != '') ?'business' :'/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings){
          return MaterialPageRoute(
            builder: (context) => ErrorPage()
          );
        },
      ),
    );
  }
}