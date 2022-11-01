import 'package:day_08/app/registration/controller/registration_controller.dart';
import 'package:day_08/app/registration/model/gender.dart';
import 'package:day_08/app/registration/widget/dialog_view.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RegistrationController _controller = RegistrationController();
  final _formKey = GlobalKey<FormState>();

  Gender? _selectedGender;
  bool? _isTermsConditionChecked = false;
  late String birthDateText;
  DateTime selectedBirthDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    birthDateText = "Select your birthdate";
    _selectedGender = Gender.MALE;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getBody(context),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            _getNameInputField(),
            const SizedBox(height: 10.0),
            _getEmailInputField(),
            const SizedBox(height: 10.0),
            _getPasswordInputField(),
            const SizedBox(height: 10.0),
            _getBirthDateView(),
            const SizedBox(height: 10.0),
            _getGenderView(),
            _getDummyRadioView(),
            const SizedBox(height: 40.0),
            _getTermsAndConditionCheckerView(),
            _getRegisterButton(context),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }

  Widget _getNameInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: _controller.nameController,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "Name",
        ),
        keyboardType: TextInputType.name,
        validator: _controller.isNameValid,
      ),
    );
  }

  Widget _getEmailInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: _controller.emailController,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email_outlined),
          hintText: "Email",
        ),
        keyboardType: TextInputType.emailAddress,
        validator: _controller.isEmailValid,
      ),
    );
  }

  Widget _getPasswordInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: _controller.passwordController,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          hintText: "Password",
        ),
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        validator: _controller.isPasswordValid,
      ),
    );
  }

  Widget _getBirthDateView() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      child: InkWell(
        onTap: () => _showDatePicker(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            birthDateText,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget _getGenderView() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          _getGenderTitle(),
          _getMaleRadioView(),
          _getFemaleRadioView(),
        ],
      ),
    );
  }

  Widget _getGenderTitle() {
    return Text("Gender:");
  }

  Gender? otherGender;

  Widget _getDummyRadioView() {
    return ListTile(
      title: const Text("Others"),
      leading: Radio(
        value: Gender.OTHERS,
        groupValue: otherGender,
        onChanged: (Gender? gender) {
          setState(() => otherGender = gender);
          print("Selected $gender");
        },
      ),
    );
  }

  Widget _getMaleRadioView() {
    return Expanded(
      child: ListTile(
        title: const Text("Male"),
        leading: Radio(
          value: Gender.MALE,
          groupValue: _selectedGender,
          onChanged: (Gender? gender) {
            print("Selected $gender");
            changeSelectedGender(gender);
          },
        ),
      ),
    );
  }

  Widget _getFemaleRadioView() {
    return Expanded(
      child: ListTile(
        title: const Text("Female"),
        leading: Radio(
          value: Gender.FEMAlE,
          groupValue: _selectedGender,
          onChanged: (Gender? gender) {
            print("Selected $gender");
            changeSelectedGender(gender);
          },
        ),
      ),
    );
  }

  void changeSelectedGender(Gender? gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  Widget _getTermsAndConditionCheckerView() {
    return ListTile(
      title: const Text("I agree the terms and conditions"),
      leading: Checkbox(
        value: _isTermsConditionChecked,
        onChanged: (bool? isChecked) {
          if (isChecked != null && !isChecked) {
            _showAlertDialog();
          }
          setState(() => _isTermsConditionChecked = isChecked);
        },
      ),
    );
  }

  Widget _getRegisterButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () {
          // if (_formKey.currentState!.validate()) {
          //   Navigator.pop(context);
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     const SnackBar(
          //       content: Text("Successfully registered"),
          //     ),
          //   );
          // }
        },
        child: const Text("Register"),
      ),
    );
  }

  void _showDatePicker() async {
    DateTime firstDate = DateTime(2021, 1, 1);
    DateTime lastDate = DateTime(2022, 12, 31);

    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: selectedBirthDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (dateTime != null) {
      setState(() {
        selectedBirthDate = dateTime;
        birthDateText =
            "${selectedBirthDate.day}/${selectedBirthDate.month}/${selectedBirthDate.year}";
      });
    }
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const DialogView();
      },
    );
  }

  // drawer
// endDrawer
}
