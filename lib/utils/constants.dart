class AppConstants {
  // GST Rates
  static const List<double> gstRates = [5.0, 12.0, 18.0, 28.0];

  // Firebase Collections
  static const String productsCollection = 'products';
  static const String invoicesCollection = 'invoices';

  // Shared Preferences Keys
  static const String themeModeKey = 'theme_mode';
  static const String lastInvoiceNumberKey = 'last_invoice_number';

  // Date Formats
  static const String dateFormat = 'dd/MM/yyyy';
  static const String timeFormat = 'hh:mm a';
  static const String dateTimeFormat = 'dd/MM/yyyy hh:mm a';

  // Invoice Number Format
  static const String invoiceNumberPrefix = 'INV';
  static const int invoiceNumberLength = 6;

  // Validation
  static const int minPasswordLength = 6;
  static const int maxProductNameLength = 100;
  static const int maxProductDescriptionLength = 500;
  static const int maxCustomerNameLength = 100;
  static const int maxCustomerPhoneLength = 15;
  static const int maxCustomerEmailLength = 100;

  // Error Messages
  static const String errorRequiredField = 'This field is required';
  static const String errorInvalidEmail = 'Please enter a valid email';
  static const String errorInvalidPhone = 'Please enter a valid phone number';
  static const String errorInvalidGstRate = 'Please select a valid GST rate';
  static const String errorInvalidPrice = 'Please enter a valid price';
  static const String errorInvalidQuantity = 'Please enter a valid quantity';
  static const String errorNetwork = 'Network error occurred';
  static const String errorUnknown = 'An unknown error occurred';
}
