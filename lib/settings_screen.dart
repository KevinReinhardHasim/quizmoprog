import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: themeProvider.currentFont),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Font',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: themeProvider.currentFont,
              ),
            ),
            ListTile(
              title:
                  const Text('Roboto', style: TextStyle(fontFamily: 'Roboto')),
              leading: Radio(
                value: 'Roboto',
                groupValue: themeProvider.currentFont,
                onChanged: (String? value) {
                  themeProvider.changeFont(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Lato', style: TextStyle(fontFamily: 'Lato')),
              leading: Radio(
                value: 'Lato',
                groupValue: themeProvider.currentFont,
                onChanged: (String? value) {
                  themeProvider.changeFont(value!);
                },
              ),
            ),
            ListTile(
              title:
                  const Text('Oswald', style: TextStyle(fontFamily: 'Oswald')),
              leading: Radio(
                value: 'Oswald',
                groupValue: themeProvider.currentFont,
                onChanged: (String? value) {
                  themeProvider.changeFont(value!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
