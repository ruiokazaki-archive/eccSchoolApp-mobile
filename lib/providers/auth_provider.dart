import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, UserAuth>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<UserAuth> {
  AuthNotifier() : super(UserAuth());

  final authRepository = AuthRepository();

  Future<void> signIn({
    required String userId,
    required String password,
  }) async {
    state = await authRepository.signIn(
      userId: userId,
      password: password,
    );
  }

  void signOut() {
    authRepository.signOut();
    state = UserAuth();
  }

  UserAuth? getUserAuth() {
    return authRepository.getUserAuth();
  }

  bool get isSignedIn => state.token?.isNotEmpty ?? false;
}
