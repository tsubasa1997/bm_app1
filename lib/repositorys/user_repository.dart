import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../datasource/firebase_datasource.dart';
import '../models/user/user.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepository(ref: ref),
);

class UserRepository {
  const UserRepository({required this.ref});

  final Ref ref;

  FirestoreDatasource get _remote => ref.read(firestoreDatasourceProvider);


}
