import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasoParametrosScreen extends StatefulWidget {
  const PasoParametrosScreen({Key? key}) : super(key: key);

  @override
  _PasoParametrosScreenState createState() => _PasoParametrosScreenState();
}

class _PasoParametrosScreenState extends State<PasoParametrosScreen> {
  @override
  void initState() {
    super.initState();
    print("PasoParametrosScreen -> initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("PasoParametrosScreen -> didChangeDependencies()");
  }

  @override
  Widget build(BuildContext context) {
    print("PasoParametrosScreen -> build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Paso de Parámetros'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Ejemplo: Navegar a DetalleScreen con el valor "Flutter"
            context.go('/detalle/Flutter');
          },
          child: const Text('Ir a Detalle con valor "Flutter"'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("PasoParametrosScreen -> dispose()");
    super.dispose();
  }
}
