import 'package:go_router/go_router.dart';
import 'package:image_search1/ui/detail/detail_screen.dart';
import 'package:image_search1/ui/main/main_screen.dart';
import 'package:provider/provider.dart';

import '../../ui/main/main_view_model.dart';
import '../model/photo.dart';
import '../repository/pixabay_photo_repository_impl.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return   ChangeNotifierProvider(
            create: (_) => MainViewModel(PixabayPhotoRepositoryImple()),
        child: const MainScreen(),
        );
      },
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) {
            final photo = state.extra as Photo;
            return DetailScreen(photo: photo);
          },
        ),
      ],
    ),
  ],
);
