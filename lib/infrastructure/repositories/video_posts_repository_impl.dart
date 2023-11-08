import 'package:dark_tiktok_app/domain/datasources/video_posts_datasource.dart';
import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:dark_tiktok_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDatasource;

// constructor
  const VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
