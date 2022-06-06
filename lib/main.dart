import 'dart:math';

import 'package:essential005/bloc/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ThemeBloc(),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            print(state.themeStatus);
            return MaterialApp(
                title: 'Flutter Demo',
                theme: state.themeStatus == ThemeStatus.light
                    ? ThemeData.light()
                    : ThemeData.dark(),
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text('title'),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            int rndNumber = Random().nextInt(100);
                            print(rndNumber);
                            context
                                .read<ThemeBloc>()
                                .add(ChangeTheme(randNumber: rndNumber));
                          },
                          child: Text(
                            ' Change theme ',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ));
  }
}
