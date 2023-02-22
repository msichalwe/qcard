import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAccountTwoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for facebook widget.
  TextEditingController? facebookController;
  String? Function(BuildContext, String?)? facebookControllerValidator;
  // State field(s) for instagram widget.
  TextEditingController? instagramController;
  String? Function(BuildContext, String?)? instagramControllerValidator;
  // State field(s) for whatsApp widget.
  TextEditingController? whatsAppController;
  String? Function(BuildContext, String?)? whatsAppControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    facebookController?.dispose();
    instagramController?.dispose();
    whatsAppController?.dispose();
  }

  /// Additional helper methods are added here.

}
