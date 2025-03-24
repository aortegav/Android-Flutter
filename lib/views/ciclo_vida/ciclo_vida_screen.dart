import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CicloVidaScreen extends StatefulWidget {
  const CicloVidaScreen({Key? key}) : super(key: key);

  @override
  _CicloVidaScreenState createState() => _CicloVidaScreenState();
}

class _CicloVidaScreenState extends State<CicloVidaScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("CicloVidaScreen -> initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("CicloVidaScreen -> didChangeDependencies()");
  }

  @override
  Widget build(BuildContext context) {
    print("CicloVidaScreen -> build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ciclo de Vida'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Vuelve a la pantalla anterior
            context.pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Valor del contador: $counter'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("CicloVidaScreen -> setState()");
                setState(() {
                  counter++;
                });
              },
              child: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("CicloVidaScreen -> dispose()");
    super.dispose();
  }
}
