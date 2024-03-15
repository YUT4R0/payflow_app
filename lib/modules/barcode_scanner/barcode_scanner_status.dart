class BarcodeScannerStatus {
  final bool isCameraAvaliable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus(
      {this.stopScanner = false,
      this.isCameraAvaliable = false,
      this.error = "",
      this.barcode = ""});

  factory BarcodeScannerStatus.avaliable() =>
      BarcodeScannerStatus(isCameraAvaliable: true, stopScanner: false);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message, stopScanner: true);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode, stopScanner: true);

  bool get showCamera => isCameraAvaliable && error.isEmpty;
  bool get hasError => error.isNotEmpty;
  bool get hasBarcode => barcode.isNotEmpty;
}
