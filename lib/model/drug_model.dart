class Drug {
  num height;
  Drug(
    this.height,
  );
  static List<Drug> generate() {
    return [
      Drug(220.0),
      Drug(150.0),
      Drug(200.0),
      Drug(170.0),
      Drug(190.0),
      Drug(200.0),
      Drug(220.0),
      Drug(220.0),
    ];
  }
}
