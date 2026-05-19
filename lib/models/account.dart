import 'package:myconta_pocket/enums/currency.dart';
import 'package:myconta_pocket/packages/model.dart';

class Account extends Model {
  String name;
  int balance;
  Currency currency;

  Account({
    int? id,
    required this.name,
    required this.balance,
    required this.currency,
  });

  @override
  String get tableName => "accounts";

  @override
  Map<String, dynamic> toMap({bool includePK = false}) {
    final map = <String, dynamic>{
      'name': name,
      'balance': balance,
      'currency': currency.value,
    };
    if (includePK && id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      name: map["name"],
      balance: (map["balance"] as num).toInt(),
      currency: Currency.fromValue(map["currency"] as String),
    );
  }

  Account copy() {
    return Account(id: id, name: name, balance: balance, currency: currency);
  }
}
