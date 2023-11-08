import 'package:flutter/material.dart';
import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:dark_tiktok_app/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepositoy;

  DiscoverProvider({required this.videosRepositoy});

  bool initialLoading = true;
  List<VideoPost> videosList = [];

  Future<void> loadNextPage() async {
    final newVideos = await videosRepositoy.getTrendingVideosByPage(1);

    videosList.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
