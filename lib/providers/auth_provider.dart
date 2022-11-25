import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, UserAuth>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<UserAuth> {
  AuthNotifier() : super(UserAuth());

  final authRepository = AuthRepository();

  Future<void> signin({
    required String userId,
    required String password,
  }) async {
    state = await authRepository.signin(
      userId: userId,
      password: password,
    );
  }
}
