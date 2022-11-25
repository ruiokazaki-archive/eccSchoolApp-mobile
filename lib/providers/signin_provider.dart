import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/repositories/signin_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signinRepositoryProvider = Provider((ref) => SinginRepository());

final signinProvider = FutureProvider.autoDispose<UserAuth>((ref) async {
  final signinRepository = ref.read(signinRepositoryProvider);
  return await signinRepository.signin();
});
