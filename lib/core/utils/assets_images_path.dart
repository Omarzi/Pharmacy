const String imageAssetsRoot = "assets/images/";
const String iconAssetsRoot = "assets/icons/";

// String weatherImage = _getAssetsImagePath('weather_image.jpg');
String logo = _getAssetsImagePath('logo_11zon_low.png');
String scan = _getAssetsImagePath('Scan.png');
String painrelife = _getAssetsImagePath('painrelife.png');
String antibaiotic = _getAssetsImagePath('antibaiotic.png');
String eyecare = _getAssetsImagePath('eye.png');
String diabetesCare = _getAssetsImagePath('diabetes_care.png');
String babyCare = _getAssetsImagePath('babycare.png');
String heartCare = _getAssetsImagePath('heart_care.png');
String panadol = _getAssetsImagePath('panadol.png');
String patient = _getAssetsImagePath('patient.png');
String doctor = _getAssetsImagePath('doctor.png');
String scanlogo = _getAssetsImagePath('scanlogo.jpg');
String hair = _getAssetsImagePath('hair.png');
String header = _getAssetsImagePath('header.png');
String ppp = _getAssetsImagePath('ppp.png');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}

String _getAssetsIconPath(String fileName) {
  return iconAssetsRoot + fileName;
}
