import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/config/presentation/providers/chat_provider.dart';
import 'package:yesnoapp/config/presentation/screens/chat/chat_screen.dart';
import 'package:yesnoapp/config/theme/app_theme.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'Yes or No',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: ChatScreen(),
        ),
    );
  }
}