import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';

void registerPlugins(Registrar register) {
  FirebaseCoreWeb.registerWith(register);
  GoogleSignInPlugin.registerWith(register);
  register.registerMessageHandler();
}
