part of 'services.dart';

class UserSaveServices {
  static Future<ApiReturnValue<List<UserSave>>> getUserSave() async {
    await Future.delayed(Duration(milliseconds: 5000));

    return ApiReturnValue(value: mockUserSave);
  }

  static Future<ApiReturnValue<UserSave>> saveUserSave(UserSave save) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(value: save.copyWith(id: 12, status: 'save'));
  }
}
