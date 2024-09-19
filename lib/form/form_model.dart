import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_widget.dart' show FormWidget;
import 'package:flutter/material.dart';

class FormModel extends FlutterFlowModel<FormWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for no widget.
  FocusNode? noFocusNode;
  TextEditingController? noTextController;
  String? Function(BuildContext, String?)? noTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ContactRecord? firebaseoutput1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    noFocusNode?.dispose();
    noTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
