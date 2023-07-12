class Constants{
  static String? Function(String?)? emailValidator = (String? v) {
    String string = v!.trim();
    bool _emailValid = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(string);

    if (string.isEmpty) {
      return 'this field is required';
    } else if (!_emailValid) {
      return 'Please enter a valid email address.';
    } else {
      return null;
    }
  };
  static String imageBaseUrl = 'https://api.publish.jobs/pjcloud/jobseekerGallery/';
}