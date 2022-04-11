import 'package:flutter/material.dart';

import 'package:projectuts/Pages/Dashboard.dart';
import 'package:projectuts/Sidebar/Side_Bar.dart';

import 'package:projectuts/Screen/Inbox.dart';

// import 'package:routenavigation/pages/Contact_Us.dart';
// import 'package:routenavigation/pages/Portofolio.dart';
// import 'package:routenavigation/pages/Setting.dart';

// import 'package:routenavigation/screen/Galery.dart';
// import 'package:routenavigation/screen/Music.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/inbox':
        return MaterialPageRoute(builder: (_) => My_Inbox());
      // case '/outbox':
      //   return MaterialPageRoute(builder: (_) => My_Inbox());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
