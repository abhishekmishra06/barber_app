import 'package:barber_app/utils/imports.dart';
import 'package:flutter/services.dart';

class Inputfield extends StatefulWidget {
  const Inputfield({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.inputfieldIcon,
    this.range = 10,
    this.enforceDigitRestriction = false,
    this.keyboardType = TextInputType.text,
  });

  final String hinttext;
  final TextEditingController controller;
  final Icon inputfieldIcon;
  final bool enforceDigitRestriction;
  final TextInputType keyboardType;
  final int range;

  @override
  _InputfieldState createState() => _InputfieldState();
}

class _InputfieldState extends State<Inputfield> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: isFocused ? lightyellow : lightgrey,
          borderRadius: BorderRadius.circular(10),
          border: isFocused ? Border.all(color: yellow) : null,
        ),
        child: Center(
          child: TextFormField(
            style: TextStyle(
                color: isFocused ? yellow : grey, fontWeight: FontWeight.bold),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.enforceDigitRestriction
                ? [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]')), // Allow digits only
                    LengthLimitingTextInputFormatter(
                        widget.range), // Limit to 10 characters
                  ]
                : null,
            onChanged: (value) {},
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(widget.inputfieldIcon.icon),
              prefixIconColor: isFocused ? yellow : grey,
              hintText: widget.hinttext,
              hintStyle: TextStyle(
                color: isFocused ? yellow : grey,
              ),
            ),
            autofocus: false,
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends StatefulWidget {
  PasswordInputField({
    super.key,
    required this.controller,
    required this.inputfieldIcon,
    required this.visible,
    this.enforceDigitRestriction = false,
    this.range = 10,
  });

  final TextEditingController controller;
  final Icon inputfieldIcon;
  late bool visible;
  final bool enforceDigitRestriction;
  final int range;
  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: isFocused ? lightyellow : lightgrey,
          borderRadius: BorderRadius.circular(10),
          border: isFocused ? Border.all(color: yellow) : null,
        ),
        child: Center(
          child: TextFormField(
            controller: widget.controller,
            inputFormatters: widget.enforceDigitRestriction
                ? [
                    LengthLimitingTextInputFormatter(widget.range),
                  ]
                : null,
            obscureText: !widget.visible,
            onChanged: (value) {},
            style: TextStyle(
                color: isFocused ? yellow : grey, fontWeight: FontWeight.bold),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(widget.inputfieldIcon.icon),
              prefixIconColor: isFocused ? yellow : grey,
              hintText: "* * * * * * * *",
              hintStyle: TextStyle(
                color: isFocused ? yellow : grey,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.visible = !widget.visible;
                  });
                },
                child: Icon(
                  widget.visible ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              suffixIconColor: isFocused ? yellow : grey,
            ),
            autofocus: false,
          ),
        ),
      ),
    );
  }
}

class Searchbox extends StatefulWidget {
  const Searchbox({
    super.key,
    required this.controller,
    required this.inputfieldIcon,
    required this.suffixicon,
    required this.hinttext,
    required this.onicontap,
  });

  final TextEditingController controller;
  final Icon inputfieldIcon;
  final Icon suffixicon;
  final String hinttext;
  final Function()? onicontap;
  @override
  _SearchboxState createState() => _SearchboxState();
}

class _SearchboxState extends State<Searchbox> {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: isFocused ? lightyellow : lightgrey,
          borderRadius: BorderRadius.circular(10),
          border: isFocused ? Border.all(color: yellow) : null,
        ),
        child: TextFormField(
          controller: widget.controller,
          onChanged: (value) {},
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(widget.inputfieldIcon.icon),
            prefixIconColor: isFocused ? yellow : grey,
            hintText: widget.hinttext,
            hintStyle: Textstyle.hinttextcolor,
            suffixIcon: IconButton(
              onPressed: widget.onicontap,
              icon: Icon(
                widget.suffixicon.icon,
              ),
            ),
            suffixIconColor: yellow,
          ),
          autofocus: false,
        ),
      ),
    );
  }
}
