import 'package:chat_app/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String message;
  final Timestamp? createdAt;
  final String? id;
  Message(this.message, this.createdAt,this.id);
  factory Message.fromJson(jsonData) {
    return Message(jsonData[kMessage], jsonData[kCreatedAt],jsonData['id']);
  }
}
