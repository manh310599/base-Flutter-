import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vitech_blockchain/core/routes/routes.dart';
import 'package:vitech_blockchain/core/di/di.dart';

import 'core/application_cubit/application_cubit.dart';
import 'core/application_cubit/application_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApplicationCubit>(
      create: (context) => ApplicationCubit()..init(),
      child: BlocBuilder<ApplicationCubit, ApplicationState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: appRouter,
            theme: state.theme,
            locale: state.locale,

            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
