import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class UITextView extends StatefulWidget {
  @override
  _UITextViewState createState() => _UITextViewState();
}

class _UITextViewState extends State<UITextView> {
  final String viewType = 'UITextView';
  final Map<String, dynamic> creationParams = <String, dynamic>{};

  @override
  Widget build(BuildContext context) {
    return UiKitView(
      viewType: viewType,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
