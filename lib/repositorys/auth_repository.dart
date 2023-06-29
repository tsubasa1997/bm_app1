
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../datasource/auth_datasource.dart';
import '../datasource/firebase_datasource.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(ref: ref),
);

class AuthRepository {
  const AuthRepository({required this.ref});

  final Ref ref;

  AuthDatasource get _auth => ref.read(authDatasourceProvider);

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);

  Future<void> createUser({
    required String email,
    required String password,
    required String name,
    required String authority,
    required String companyId
  }) async {
    _auth.createUser(companyId, email, password, name, authority);
  }

  Stream<String?> uid() async* {
    yield* _auth.getUid().map((event) => event);
  }




  Future<void> signIn({required String email, required String password}) async {
    await _auth.signIn(email, password);
  }

  Future<void> signOut() => _auth.signOut();
}
