import 'package:animate_do/animate_do.dart';
import 'package:dark_tiktok_app/config/helper/human_format.dart';
import 'package:dark_tiktok_app/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BounceInDown(
            child: _CustomIconButton(
          value: video.likes,
          iconColor: Colors.red,
          iconData: Icons.favorite,
        )),
        const SizedBox(height: 10),
        _CustomIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(height: 10),
        SpinPerfect(
            duration: const Duration(seconds: 1),
            child: const _CustomIconButton(
              value: 0,
              iconData: Icons.play_circle_outlined,
            ))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            icon: Icon(iconData, color: color), iconSize: 30, onPressed: () {}),
        if (value > 0) Text(HumnanFormat.humanReableNumber(value.toDouble()))
      ],
    );
  }
}
