import 'package:cinebox/config/result/result.dart';

abstract interface class AuthRepository {
  Future<Result<Unit>> signIn();
  Future<Result<Unit>> singOut();
  Future<Result<bool>> isLogged();
}
