import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:myapp/src/pages/entry_point/page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Supabase.initialize(
    url: 'https://ovlntpszuvftllfcxkij.supabase.co',
    anonKey: '646c0446-e7d1-4f7a-b179-5d1757a66e98',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primo Progetto',
      home: SplashScreenView(
        navigateRoute: PageEntryPoint(),
        duration: 2200,
        imageSize: 140,
        imageSrc: "teta-app.png",
        text: "",
        textType: TextType.NormalText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
