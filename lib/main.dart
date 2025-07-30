import 'package:fluter_crud/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/user_list.dart';
import 'provider/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const UserList(),
      ),
    );
  }
}

