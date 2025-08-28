import 'dart:async';

// Lightweight, local replacement for Firebase-backed Auth used by the app.
// Provides the same public API surface the project expects so other files
// don't need changes when Firebase is removed.

class User {
  final String uid;
  final String? email;
  User({required this.uid, this.email});
}

class Auth {
  User? _currentUser;
  final StreamController<User?> _authStateController =
      StreamController<User?>.broadcast();

  User? get currentUser => _currentUser;

  Stream<User?> get authStateChanges => _authStateController.stream;

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    // Simple in-memory sign-in. Replace with real auth later if needed.
    _currentUser = User(uid: 'local_${email.hashCode}', email: email);
    _authStateController.add(_currentUser);
    return;
  }

  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    // Simple in-memory account creation.
    _currentUser = User(uid: 'local_${email.hashCode}', email: email);
    _authStateController.add(_currentUser);
    return;
  }

  Future<void> signOut() async {
    _currentUser = null;
    _authStateController.add(null);
    return;
  }

  void dispose() {
    _authStateController.close();
  }
}
