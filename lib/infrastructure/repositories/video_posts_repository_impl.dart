import 'package:dark_tiktok_app/domain/datasources/video_posts_datasource.dart';
import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:dark_tiktok_app/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

// constructor
  const VideoPostsRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostDataSource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
