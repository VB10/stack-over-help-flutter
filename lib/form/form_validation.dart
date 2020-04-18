//https://stackoverflow.com/questions/61263795/flutter-raisedbutton-stays-null
import 'package:flutter/material.dart';

class FormValidationView extends StatefulWidget {
  @override
  _FormValidationViewState createState() => _FormValidationViewState();
}

class _FormValidationViewState extends State<FormValidationView> {
  TextEditingController _userNameController;
  TextEditingController _emailController;
  GlobalKey<FormState> _formKey = GlobalKey();
  bool isValid = false;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildForm(),
    );
  }

  Form buildForm() {
    return Form(
      key: _formKey,
      onChanged: () {
        setState(() {
          isValid = _formKey.currentState.validate();
        });
      },
      child: buildColumn(),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        buildTextFormFieldUserName(),
        buildTextFormFieldEmail(),
        buildRaisedButtonSave()
      ],
    );
  }

  RaisedButton buildRaisedButtonSave() {
    return RaisedButton(
      onPressed: !isValid ? null : () {},
      child: Icon(Icons.check),
    );
  }

  TextFormField buildTextFormFieldEmail() => TextFormField(
        controller: _emailController,
        validator: isEmpty,
      );

  TextFormField buildTextFormFieldUserName() {
    return TextFormField(validator: isEmpty, controller: _userNameController);
  }

  String isEmpty(String text) {
    return text.isEmpty ? "It's required" : null;
  }
}
