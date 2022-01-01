import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:paged_vertical_calendar/paged_vertical_calendar.dart';

class PageHomePage extends StatefulWidget {
  const PageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageHomePage>
    with SingleTickerProviderStateMixin {
  String state1 = '0';

  String state2 = '0';

  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Image.network(
            '''https://source.unsplash.com/random''',
            width: double.maxFinite,
            height: 150,
            fit: BoxFit.cover,
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: null,
                  ),
                  GestureDetector(
                      child: Column(
                    children: [
                      Icon(
                        MdiIcons.fromString('account-box'),
                        size: 24,
                        color: Color(0xFFFFFFFF),
                      ),
                      Text(
                        'Contatti',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
                ],
              )),
        ],
      ),
    );
  }
}
