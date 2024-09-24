import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'qr_widget.dart' show QrWidget;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QrModel extends FlutterFlowModel<QrWidget> {
  ///  State fields for stateful widgets in this page.

  var qrcode = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
