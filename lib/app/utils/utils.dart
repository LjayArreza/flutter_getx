class Utils {
  static String getIcons(String name, {String format: 'png'}) {
    return 'assets/icons/$name.$format';
  }

  static String getImages(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }

  static String getSvgImagePath(String name, {String format: 'svg'}) {
    return 'assets/svg/$name.$format';
  }
}
