import 'package:dark_tiktok_app/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:dark_tiktok_app/providers/discover_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    // final discoverProvider = context.read<DiscoverProvider>(); // just to read data first time
    // final discoverProvider = Provider.of<DiscoverProvider>(context, listen: true); // same way to watch data provider

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            )
          : Center(
              child: VideoScrollableView(
                videos: discoverProvider.videosList,
              ),
            ),
    );
  }
}
