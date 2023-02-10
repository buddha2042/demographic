import 'package:flutter/material.dart';

class FormComp extends StatefulWidget {
  late String hint;
  late String label;
  FormComp({Key? key, required this.hint, required this.label})
      : super(key: key);

  @override
  State<FormComp> createState() => _FormCompState();
}

class _FormCompState extends State<FormComp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            widget.label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: widget.hint,
            hintStyle: TextStyle(color: Theme.of(context).disabledColor),
            contentPadding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
          ),
        )
      ],
    );
  }
}
