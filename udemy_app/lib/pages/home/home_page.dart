 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:udemy_app/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const _HomeView(),
      );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: const [
        _CustomListTile(title: 'Provider', subtitle: 'Simple state', location: '/state-provider')
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {

  const _CustomListTile({required this.title, required this.subtitle, required this.location});

  final String title;
  final String subtitle;
  final String location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: ()=> context.push(location),
    );
  }
}


