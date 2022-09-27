import 'package:antony_913/data/db_helper.dart';
import 'package:antony_913/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao{


  Future<bool> autenticar({required String user, required String password}) async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user WHERE username = ? AND password = ?;';
    var result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

   listarUsuarios() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = "SELECT * FROM USER";
    final result = await db.rawQuery(sql);

    List<User> lista = <User>[];
    for(var json in result){
      User user = User.fromJson(json);
      lista.add(user);
    }

    return lista;
  }

}