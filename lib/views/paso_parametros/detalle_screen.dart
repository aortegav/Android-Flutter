// detalle_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetalleScreen extends StatefulWidget {
  final String param;
  const DetalleScreen({Key? key, required this.param}) : super(key: key);

  @override
  _DetalleScreenState createState() => _DetalleScreenState();
}

class _DetalleScreenState extends State<DetalleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop(); // Ahora SÍ hay algo que "pop"
          },
        ),
      ),
      body: Center(
        child: Text('Parámetro recibido: ${widget.param}'),
      ),
    );
  }
}
