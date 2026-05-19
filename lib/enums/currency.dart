enum Currency {
  ars("ars", "Peso Argentino", "\$"),
  bob("bob", "Boliviano", "Bs"),
  clp("clp", "Peso Chileno", "\$"),
  cop("cop", "Peso Colombiano", "\$"),
  crc("crc", "Colón Costarricense", "₡"),
  cup("cup", "Peso Cubano", "\$"),
  dop("dop", "Peso Dominicano", "\$"),
  eur("eur", "Euro", "€"),
  gtq("gtq", "Quetzal", "Q"),
  hnl("hnl", "Lempira", "L"),
  mxn("mxn", "Peso Mexicano", "\$"),
  nio("nio", "Córdoba", "C\$"),
  pab("pab", "Balboa", "B/."),
  pen("pen", "Sol", "S/"),
  pyg("pyg", "Guaraní", "₲"),
  usd("usd", "Dólar", "\$"),
  uyu("uyu", "Peso Uruguayo", "\$U"),
  ves("ves", "Bolívar Soberano", "Bs.S"),
  unknown("unknown", "Desconocido", "?");

  final String value;
  final String label;
  final String symbol;

  const Currency(this.value, this.label, this.symbol);

  static Currency fromValue(String value) {
    return values.firstWhere(
      (e) => e.value == value.toLowerCase(),
      orElse: () => Currency.unknown,
    );
  }
}
