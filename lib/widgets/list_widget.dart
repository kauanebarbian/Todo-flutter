import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<String> listaDeUsuarios;
  final Function deleteNome;

  const ListWidget({
    super.key,
    required this.listaDeUsuarios,
    required this.deleteNome,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listaDeUsuarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(listaDeUsuarios[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => deleteNome(index),
            ),
          );
        },
      ),
    );
  }
}
