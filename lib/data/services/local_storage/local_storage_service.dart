import 'package:cinebox/config/result/result.dart';

abstract interface class LocalStorageService {
  Future<Result<Unit>> saveIdToken(String token);
  Future<Result<String>> getItToken();
  Future<Result<Unit>> removeIdToken();
}
