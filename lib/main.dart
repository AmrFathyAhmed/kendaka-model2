import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:kendaka_test/features/story/presentation/views/story_view.dart';

import 'features/history/presentation/views/widgets/history_view_body.dart';
import 'features/home/presentation/views/home_view.dart';
import 'features/to_recieve/presentation/views/widgets/to_recieve_progress_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeView(),
    );
  }
}
