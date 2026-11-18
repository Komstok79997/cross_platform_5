import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _size = 75.0;
const _bgColor = Colors.green;
const _borderColor = Colors.grey;
const _borderWidth = 3.0;
const _borderRadius = 37.5;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Лабораторна робота №5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildThree(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildThree() {
    return [
      _buildHorizontal(),
      _buildRight(),
      _buildMiddle(),
      _buildRight(),
      _buildHorizontal(),
    ];
  }

  Widget _buildHorizontal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(),
        _buildDot(),
        _buildDot(),
      ],
    );
  }

  Widget _buildMiddle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildDot(),
        _buildDot(),
      ],
    );
  }

  Widget _buildRight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        border: Border.all(
          color: _borderColor,
          width: _borderWidth,
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return const SizedBox(
      width: _size,
      height: _size,
    );
  }
}