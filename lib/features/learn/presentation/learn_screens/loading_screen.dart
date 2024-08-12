import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({
    super.key,
    required this.reason,
  });
  final bool reason;

  @override
  State<LoadingScreen> createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.reason
        ? const SizedBox()
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
