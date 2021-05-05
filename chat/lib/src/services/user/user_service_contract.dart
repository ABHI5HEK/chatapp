import 'package:chat/src/models/user.dart';

abstract class IuserService {
  Future<User> connect(User user);
  Future<List<User>> online();
  Future<void> disconnect(User user);
}
