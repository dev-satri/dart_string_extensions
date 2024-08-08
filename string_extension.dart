extension StringExtension on String {
  String pascalToSnakeCase() {
    {
      List<String> snakeCaseData = [];
      for (int i = 0; i < this.length; i++) {
        snakeCaseData.add(this[i]);
      }
      for (int i = 0; i < snakeCaseData.length; i++) {
        if (i != 0 && snakeCaseData[i] == snakeCaseData[i].toUpperCase()) {
          snakeCaseData[i] = '_${snakeCaseData[i].toLowerCase()}';
        } else {
          snakeCaseData[i] = '${snakeCaseData[i].toLowerCase()}';
        }
      }
      return snakeCaseData.join();
    }
  }
}
