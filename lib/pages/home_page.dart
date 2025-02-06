import 'package:flutter/material.dart';
import 'package:todo/widgets/input_widget.dart';
import 'package:todo/widgets/list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listaDeUsuarios = <String>["Kauane", "Kau", "Euu"];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputWidget(controller: controller),
            ListWidget(
              listaDeUsuarios: listaDeUsuarios,
              deleteNome: deleteNome,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        if (controller.text.isNotEmpty) {
                          listaDeUsuarios.add(controller.text);
                          controller.clear();
                        }
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text('Adicionar'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void deleteNome(int index) {
    setState(() {
      listaDeUsuarios.remove(listaDeUsuarios[index]);
    });
  }
}
