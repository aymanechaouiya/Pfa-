import '/flutter_flow/flutter_flow_util.dart';
import 'creat_chat_widget.dart' show CreatChatWidget;
import 'package:flutter/material.dart';

class CreatChatModel extends FlutterFlowModel<CreatChatWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
