import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> gridItems = []; // Lista de items para el GridView

  @override
  void initState() {
    super.initState();
    print("HomeView -> initState()");
    _tabController = TabController(length: 2, vsync: this);
    // Agregar algunos items iniciales (opcional)
    gridItems = List.generate(6, (index) => "Item $index");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("HomeView -> didChangeDependencies()");
  }

  @override
  Widget build(BuildContext context) {
    print("HomeView -> build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // GridView dinámico que muestra los items de la lista
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: gridItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navegar a DetalleScreen usando push para poder volver atrás
                  context.push('/detalle/${gridItems[index]}');
                },
                child: Card(
                  child: Center(child: Text(gridItems[index])),
                ),
              );
            },
          ),
          // ListView en la segunda pestaña
          ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Elemento $index'),
                onTap: () {
                  if (index.isEven) {
                    context.push('/ciclo-vida');
                  } else {
                    context.push('/paso-parametros');
                  }
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Agrega un nuevo item al Grid
            gridItems.add("Nuevo Item ${gridItems.length}");
          });
          // Opcional: muestra un SnackBar confirmando la acción
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Se agregó "Nuevo Item ${gridItems.length - 1}"')),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(text: 'Grid'),
          Tab(text: 'Lista'),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
