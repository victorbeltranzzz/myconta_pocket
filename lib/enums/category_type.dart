enum CategoryType {
  income('income', 'ingreso'),
  expense('expense', 'gasto');

  final String value;
  final String label;

  const CategoryType(this.value, this.label);

  static CategoryType fromValue(String value) {
    return values.firstWhere(
      (e) => e.value == value.toLowerCase(),
      orElse: () => CategoryType.income,
    );
  }
}
