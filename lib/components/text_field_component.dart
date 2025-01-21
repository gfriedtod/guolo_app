import 'package:flutter/material.dart';

/// The [TextFieldComponentView] is a TextFieldComponent
class TextFieldComponentView extends StatefulWidget {
  ///The text controller.
  TextEditingController controller;
  bool? passWordWidget;
  double? height;
  bool? enabled;

  ///The label text.
  final String labelText;
  TextFieldComponentView(
      {super.key,
      required this.controller,
      required this.labelText,
      this.passWordWidget,
      this.height,
      this.enabled});

  @override
  State<TextFieldComponentView> createState() => _TextFieldComponentViewState();
}

class _TextFieldComponentViewState extends State<TextFieldComponentView> {
  bool visibility = false;
  @override
  void initState() {
    visibility = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 50,
      child: TextFormField(
        readOnly: widget.enabled ?? false,
        obscureText: visibility,
        controller: widget.controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: (widget.passWordWidget ?? false)
              ? InkWell(
                  onTap: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },
                  child: (!visibility)
                      ? const Icon(Icons.remove_red_eye, color: Colors.green)
                      : const Icon(Icons.visibility_off, color: Colors.grey))
              : const SizedBox.shrink(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(widget.labelText,
              style: const TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }
}
