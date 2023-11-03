import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
import 'package:tugas_arkom/config/inits.dart';
import 'package:tugas_arkom/config/inject.dart';
import 'package:tugas_arkom/config/platform_type.dart';
import 'package:tugas_arkom/material.dart';

void main() async {
  RM.env = Flavor.dev;
  await inits();
  runApp(
    DevicePreview(
      enabled: PlatformType.isLinux,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => const MyWebb(), //* Wrap your app
    ),
  );
}
