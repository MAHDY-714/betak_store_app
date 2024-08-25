import 'package:betak_store_app/Features/registration/data/repo/registration_repo_implement.dart';
import 'package:betak_store_app/core/services/firebase_auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton(
      RegistrationRepoImaplement(FirebaseAuthService(FirebaseAuth.instance)));
}
