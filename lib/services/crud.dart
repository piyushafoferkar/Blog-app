class CrudMethods {
  Future<void> addData(blogData) async {
    var Firestore;
    Firestore.instance.collection("blogs").add(blogData).catchError((e) {
      print(e);
    });
  }

  getData() async {
    var Firestore;
    return await Firestore.instance.collection("blogs").snapshots();
  }
}
