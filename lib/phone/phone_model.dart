import '/flutter_flow/flutter_flow_util.dart';
import 'phone_widget.dart' show PhoneWidget;
import 'package:flutter/material.dart';

class PhoneModel extends FlutterFlowModel<PhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneno widget.
  FocusNode? phonenoFocusNode;
  TextEditingController? phonenoTextController;
  String? Function(BuildContext, String?)? phonenoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phonenoFocusNode?.dispose();
    phonenoTextController?.dispose();
  }
}
