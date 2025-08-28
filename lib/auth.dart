import 'dart:async';

class UserModel {
	final String uid;
	final String? email;
	UserModel({required this.uid, this.email});
}

/// Lightweight in-memory auth replacement for projects that don't use Firebase.
/// Provides the minimal API used by the app: currentUser, authStateChanges,
/// signInWithEmailAndPassword, createUserWithEmailAndPassword, signOut.
class Auth {
	UserModel? _currentUser;
	final _controller = StreamController<UserModel?>.broadcast();

	UserModel? get currentUser => _currentUser;

	Stream<UserModel?> get authStateChanges => _controller.stream;

	Future<void> signInWithEmailAndPassword({
		required String email,
		required String password,
	}) async {
		// Simple deterministic local sign-in for development.
		_currentUser = UserModel(uid: 'local_${email.hashCode}', email: email);
		_controller.add(_currentUser);
	}

	Future<void> createUserWithEmailAndPassword({
		required String email,
		required String password,
	}) async {
		_currentUser = UserModel(uid: 'local_${email.hashCode}', email: email);
		_controller.add(_currentUser);
	}

	Future<void> signOut() async {
		_currentUser = null;
		_controller.add(null);
	}

	void dispose() => _controller.close();
}
