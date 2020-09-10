import 'package:cloud_firestore/cloud_firestore.dart';
class crudMethods{
  getData() async{
    return await FirebaseFirestore.instance.collection("Литература").get();
  }
}