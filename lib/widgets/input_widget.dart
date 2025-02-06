import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;

  const InputWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Adicione um usuário',
        border: OutlineInputBorder(),
      ),
    );
  }
}
