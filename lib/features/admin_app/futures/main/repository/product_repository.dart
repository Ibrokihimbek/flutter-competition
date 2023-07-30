import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_competition/data/models/admin_product_model/product_model_admin.dart';

class ProductRepository {
  final FirebaseFirestore _firestore;

  ProductRepository({required FirebaseFirestore firebaseFirestore})
      : _firestore = firebaseFirestore;

  Future<void> addProduct({required ProductModel productModel}) async {
    try {
      DocumentReference newProduct =
      await _firestore.collection("products").add(productModel.toJson());
      await _firestore.collection("products").doc(newProduct.id).update({
        "productId": newProduct.id,
      });
      debugPrint("qo'shildi");
    } on FirebaseException catch (er) {
      debugPrint(er.message.toString());
    }
  }

  Future<void> deleteProduct({required String docId}) async {
    try {
      await _firestore.collection("products").doc(docId).delete();

      debugPrint("o'chirildi");
    } on FirebaseException catch (er) {
      debugPrint(er.message.toString());
    }
  }

  Future<void> updateProduct({required ProductModel productModel}) async {
    try {
      await _firestore
          .collection("products")
          .doc(productModel.productId)
          .update(productModel.toJson());

      debugPrint("yangilandi");
    } on FirebaseException catch (er) {
      debugPrint(er.message.toString());
    }
  }

  Stream<List<ProductModel>> getProducts({required String categoryId}) async* {
    if (categoryId.isEmpty) {
      yield* _firestore.collection("products").snapshots().map(
            (querySnapshot) => querySnapshot.docs
            .map((doc) => ProductModel.fromJson(doc.data()))
            .toList(),
      );
    } else {
      yield* _firestore
          .collection("products")
          .where("categoryId", isEqualTo: categoryId)
          .snapshots()
          .map(
            (querySnapshot) => querySnapshot.docs
            .map((doc) => ProductModel.fromJson(doc.data()))
            .toList(),
      );
    }
  }
}