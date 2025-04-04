enum Color {
  Red,
  Pink,
  Blue,
  Orange,
  Green
}

main() {
  List<Color> colors = Color.values;

  print('${Color.Blue} ${Color.Blue.index}');
  print(colors);

  colors.forEach((color) {
    print('$color => ${color.index}');
  });

}
