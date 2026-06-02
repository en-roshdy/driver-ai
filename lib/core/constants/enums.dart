enum VerificationMethod {
  sms,
  whatsapp;

  String get name => toString().split('.').last;
}
