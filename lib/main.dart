import 'package:dark_tiktok_app/config/theme/app_theme.dart';
import 'package:dark_tiktok_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:dark_tiktok_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:dark_tiktok_app/presentation/screens/discover/discover_screen.dart';
import 'package:dark_tiktok_app/providers/discover_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videosRepositoy =
        VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasourceImpl());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => DiscoverProvider(videosRepositoy: videosRepositoy)
              ..loadNextPage())
      ],
      child: MaterialApp(
          title: 'Dark TikTok',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: const DiscoverScreen()),
    );
  }
}
