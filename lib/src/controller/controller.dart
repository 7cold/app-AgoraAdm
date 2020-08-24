import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  RxBool status = false.obs;

  // ignore: always_declare_return_types
  changeStatus(bool value) async {
    await Firestore.instance
        .collection('configuracao')
        .document('configuracao')
        .updateData({
      'entrada': value,
    });

    update();
  }
}
