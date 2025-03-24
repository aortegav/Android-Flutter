import 'package:go_router/go_router.dart';
import '../views/home_view.dart';
import '../views/ciclo_vida/ciclo_vida_screen.dart';
import '../views/paso_parametros/paso_parametros_screen.dart';
import '../views/paso_parametros/detalle_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/ciclo-vida',
        builder: (context, state) => const CicloVidaScreen(),
      ),
      GoRoute(
        path: '/paso-parametros',
        builder: (context, state) => const PasoParametrosScreen(),
      ),
      GoRoute(
        path: '/detalle/:param',
        builder: (context, state) {
          final param = state.pathParameters['param'] ?? 'Sin dato';
          return DetalleScreen(param: param);
        },
      ),
    ],
  );
}
