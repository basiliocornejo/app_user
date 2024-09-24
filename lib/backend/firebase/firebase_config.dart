import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0vJ81d_Zr0mJ3kv7UA_gqDz4yQ6OeT0Q",
            authDomain: "app-movil-89c2f.firebaseapp.com",
            projectId: "app-movil-89c2f",
            storageBucket: "app-movil-89c2f.appspot.com",
            messagingSenderId: "803845222234",
            appId: "1:803845222234:web:82ef0f7dd403acd5698d63"));
  } else {
    await Firebase.initializeApp();
  }
}
