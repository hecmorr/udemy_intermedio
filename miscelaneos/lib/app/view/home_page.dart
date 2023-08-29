import 'package:flutter/material.dart';
import 'package:miscelaneos/config/theme/app_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      body: Center(
        child: Text('Flutter app', style: titleStyle,),
      ),
    );
  }
}

