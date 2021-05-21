import 'package:flutter/material.dart';
import 'package:e_service_app/dependency/dependency.dart' as dep;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_view.dart';

void main() {
  // runApp(MyApp());
  dep.init();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  return runApp(
    ProviderScope(child: AppView()),
  );
}
