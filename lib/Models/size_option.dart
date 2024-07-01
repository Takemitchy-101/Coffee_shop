class SizeOption {
  final String size;
  final String quantity;

  SizeOption({required this.size, required this.quantity});
}

List<SizeOption> sizeOpions = [
  SizeOption(size: "Tall", quantity: "12"),
  SizeOption(size: "Grande", quantity: "16"),
  SizeOption(size: "Venti", quantity: "24"),
  SizeOption(size: "Custom", quantity: "..."),
];
