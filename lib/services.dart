import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';



class Services{
  String? _patientPhone;
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  static Future<String?> getManuf() async{
    if(Platform.isAndroid){
      final info = await deviceInfoPlugin.androidInfo;


      return info.manufacturer;


    }
  }

  static Future<String?> getPhoneInfo() async{
    if(Platform.isAndroid){
      final info = await deviceInfoPlugin.androidInfo;


      return info.androidId;


    }
  }
  static Future<String?> getModel() async{
    if(Platform.isAndroid){
      final info = await deviceInfoPlugin.androidInfo;


      return info.model;


    }
  }
}
