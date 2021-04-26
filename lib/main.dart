import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

// My Imports
import 'package:google_fonts/google_fonts.dart';
import 'package:tyba/src/bloc/provider.dart' as validatorProvider;
import 'package:tyba/src/pages/error_page.dart';
import 'package:tyba/src/providers/Inputs_provider.dart';
import 'package:tyba/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InputsProvider())
      ],
        child: validatorProvider.Provider(
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
            initialRoute: '/',
            routes: getApplicationRoutes(),
            onGenerateRoute: (RouteSettings settings){
              return MaterialPageRoute(
                builder: (context) => ErrorPage()
              );
            },
      ),
        ),
    );
  }
}