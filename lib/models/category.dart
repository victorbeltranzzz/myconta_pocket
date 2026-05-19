import 'package:myconta_pocket/enums/category_type.dart';
import 'package:myconta_pocket/packages/model.dart';

class Category extends Model {
  String name;
  CategoryType type;

  Category({int? id, required this.name, required this.type});

  @override
  String get tableName => "categories";

  @override
  Map<String, dynamic> toMap({bool includePK = false}) {
    final map = <String, dynamic>{'name': name, 'type': type.value};
    if (includePK && id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int?,
      name: map['name'] as String,
      type: CategoryType.fromValue(map['type'] as String),
    );
  }

  Category copy() {
    return Category(id: id, name: name, type: type);
  }
}
