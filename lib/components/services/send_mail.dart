import 'dart:io';

import 'package:dio/dio.dart';
import 'package:kid_game/components/database/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class SendEmail {
  static SendEmail instance = SendEmail._init();
  SendEmail._init();

  Future<void> sendEmail(String level) async {
    Database db = await DatabaseHelper.instance.database;
    List mailList = await db.query("MailTable");
    String mail = mailList[0]['mail'];

    var response = await Dio().post(
      "https://api.emailjs.com/api/v1.0/email/send",
      options: Options(
        contentType: 'application/json',
      ),
      data: {
        'service_id': 'service_ttr2yfj',
        'template_id': 'template_m5hnsf8',
        'user_id': 'BCipcodAwxDmQQycG',
        'accessToken': 'mNJM8ZWqY94KC6kahg-D0',
        'template_params': {
          'message': level,
          'user_mail': mail,
        },
      },
    );
    if (response.statusCode == HttpStatus.ok) {
      print("Mail has been sent!");
    } else {
      print(HttpStatus.notFound);
    }
  }
}
