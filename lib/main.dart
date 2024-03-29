import "package:workout/screens/home.screen.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";
import "package:workout/screens/routines.screen.dart";
import "package:workout/screens/workout.screen.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const WorkoutApp());
}

class WorkoutApp extends StatelessWidget {
  const WorkoutApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: MinimalExample(),
  );
}

class MinimalExample extends StatelessWidget {
  const MinimalExample({super.key});

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: const HomeScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.home),
        title: "Home",
      ),
    ),
    PersistentTabConfig(
      screen: const WorkoutScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.fitness_center),
        title: "Treinos",
      ),
    ),
    PersistentTabConfig(
      screen: const RoutinesScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.event_note),
        title: "Rotinas",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) => PersistentTabView(
    tabs: _tabs(),
    navBarBuilder: (navBarConfig) => Style1BottomNavBar(
      navBarConfig: navBarConfig,
    ),
  );
}