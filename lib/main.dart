import 'package:cinebox/config/env.dart';
import 'package:cinebox/main_cinebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleSignIn.instance.initialize(serverClientId: Env.globalApiKey);
  runApp(ProviderScope(child: MainCinebox()));
}
