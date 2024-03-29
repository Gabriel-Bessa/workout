import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";

class RoutinesScreen extends StatelessWidget {
  const RoutinesScreen({super.key, this.useRouter = false});

  final bool useRouter;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("Routines Screen")),
    backgroundColor: Colors.indigo,
    body: ListView(
      padding: const EdgeInsets.all(5),
      children: <Widget>[
      ],
    ),
  );
}
