import 'dart:typed_data';
import 'package:esc_pos_utils_plus/esc_pos_utils.dart';
import 'package:image/image.dart' as img;

class ESCPrinterService {
  final Uint8List receipt;
  final PaperSize paperSize;
  final CapabilityProfile profile;

  ESCPrinterService(this.receipt, this.profile, this.paperSize);

  Future<List<int>> getBytes() async {
    List<int> bytes = [];
    Generator generator = Generator(paperSize, profile);
    final img.Image _resize =
        img.copyResize(img.decodeImage(receipt)!, width: paperSize.width);
    bytes += generator.image(_resize);
    bytes += generator.feed(2);
    bytes += generator.cut();
    return bytes;
  }
}
