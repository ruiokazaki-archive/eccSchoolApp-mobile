import 'package:ecc_school_app_mobile/models/user/user_auth_model.dart';
import 'package:ecc_school_app_mobile/services/repositories/auth_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, UserAuth?>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<UserAuth?> {
  AuthNotifier() : super(null) {
    getLocalUserAuth();
  }

  final authRepository = AuthRepository();

  void signIn({
    required String userId,
    required String password,
  }) async {
    final userAuth = await authRepository.signIn(
      userId: userId,
      password: password,
    );
    state = userAuth;
  }

  void signOut() {
    authRepository.signOut();
    state = null;
  }

  void getLocalUserAuth() async {
    final userAuth = authRepository.getLocalUserAuth();
    state = await userAuth;
  }

  bool get isSignedIn => state != null;
}
