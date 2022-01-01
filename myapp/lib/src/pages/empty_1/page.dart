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

class PageEmptyA1 extends StatefulWidget {
  const PageEmptyA1({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends AuthState<PageEmptyA1>
    with SingleTickerProviderStateMixin {
  final datasets = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          ('' == '')
              ? Tooltip(
                  message: '''''',
                  child: TextButton(
                    onPressed: () async {},
                  ),
                )
              : Text('''text''',
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
                  maxLines: 1),
        ],
      ),
    );
  }
}
