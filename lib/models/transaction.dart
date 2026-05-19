import 'package:myconta_pocket/packages/model.dart';

class Transaction extends Model {
  int accountId;
  int? categoryId;
  int amount;
  String description;
  DateTime date;

  Transaction({
    int? id,
    required this.accountId,
    this.categoryId,
    required this.amount,
    required this.description,
    required this.date,
  });

  @override
  String get tableName => "transactions";

  @override
  Map<String, dynamic> toMap({bool includePK = false}) {
    final map = <String, dynamic>{
      'account_id': accountId,
      'category_id': categoryId,
      'amount': amount,
      'description': description,
      'date': date.toIso8601String(),
    };
    if (includePK && id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as int?,
      accountId: map['account_id'] as int,
      categoryId: map['category_id'] as int?,
      amount: (map['amount'] as num).toInt(),
      description: map['description'] as String,
      date: DateTime.parse(map['date'] as String),
    );
  }

  Transaction copy() {
    return Transaction(
      id: id,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      description: description,
      date: date,
    );
  }
}
