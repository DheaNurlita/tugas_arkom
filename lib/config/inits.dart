import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tugas_arkom/config/platform_type.dart';
import 'package:tugas_arkom/firebase_options.dart';
// import 'package:web2/data_nama/config/platform_type.dart';

// ignore: duplicate_import
import '_index.dart';
import 'inject.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  await RM.storageInitializer(config.state.store);

  if (!PlatformType.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // x1FcmServ.init();
    // x1AuthServ.init();
  }

  // x1ConnServ.init();

  // setPathUrlStrategy();
  // setPathUrlStrategy();

  logx.wtf('inits success');
}
