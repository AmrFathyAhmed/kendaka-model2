import 'package:flutter/material.dart';
import 'package:kendaka_test/features/story/presentation/views/widgets/story_view_body.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryViewBody(),
    );
  }
}
