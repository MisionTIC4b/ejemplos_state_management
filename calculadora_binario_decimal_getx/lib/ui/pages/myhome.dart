import 'package:calculadorabinariodecimalgetx/ui/widgets/converter.dart';
import 'package:flutter/material.dart';

// BlocProvider provides access to the ConvertionBloc to all its children

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX State Management Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX State Management Demo'),
        ),
        body: Center(
          child: Converter(),
        ),
      ),
    );
  }
}
