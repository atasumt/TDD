import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_ders/model/counter.dart';
import 'package:tdd_ders/model/user.dart';
import 'package:tdd_ders/services/user_api.dart';

void main() {
  test("Sample Test", () {
    final counter = Counter(9);
    counter.artirici();
    expect(counter.number, 10);
  });

  test("Api Test", () async {
    final userApi = UserApi();
    final users = await userApi.getUsers();
    expect(users is List<User>, true);
    expect(users!.first.name, "Leanne Graham");
  });
}
