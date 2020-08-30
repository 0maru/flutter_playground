import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/animation_button/animation_button_page.dart';

class IndexPage extends StatelessWidget {
  static const path = '/index';
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('index'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _buildListTile(
              context,
              'click to animation image',
              AnimationButtonPage.path,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, String path) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.of(context).pushNamed(path),
    );
  }
}
