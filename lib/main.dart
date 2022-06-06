import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jadder/business%20logic/appCubit/appcubit_cubit.dart';
import 'package:jadder/core/constants/colors.dart';
import 'package:jadder/features/splash/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppcubitCubit>(create: (context) => AppcubitCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'URW DIN Arabic',
          scaffoldBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: kMainColor),
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
                statusBarBrightness: Brightness.dark,
              )),
          primaryColor: Colors.white,
        ),
        home: const SplshScreen(),
      ),
    );
  }
}
