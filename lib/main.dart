import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metamask_login/services/services.dart';
import 'package:metamask_login/ui/features/metamask_login_screen.dart';

import 'bloc/metamask_auth_bloc.dart';

void main() {
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MetaMaskAuthBloc(),
      child: MaterialApp(
        title: 'MetaMask Login Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MetaMaskLoginScreen(),
      ),
    );
  }
}
