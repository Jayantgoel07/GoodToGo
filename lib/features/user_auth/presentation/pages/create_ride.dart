import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore package
import 'package:firebase_core/firebase_core.dart';
import 'package:goodtogo/features/user_auth/presentation/pages/bottomnav.dart';
// import 'package:goodtogo/features/user_auth/presentation/pages/home.dart'; // Import Firebase core package

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(CreateRide());
}

class CreateRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final carNameController = TextEditingController();
  final carNumberController = TextEditingController();
  final sourceController = TextEditingController();
  final destinationController = TextEditingController();
  final amtController = TextEditingController();
  final timeController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List A Ride'),
      ),
      body: Center(
        child: MyForm(
          nameController: nameController,
          phoneController: phoneController,
          carNameController: carNameController,
          carNumberController: carNumberController,
          sourceController: sourceController,
          destinationController: destinationController,
          amtController: amtController,
          timeController: timeController,
          
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController carNameController;
  final TextEditingController carNumberController;
  final TextEditingController sourceController;
  final TextEditingController destinationController;
  final TextEditingController amtController;
  final TextEditingController timeController;
  

  const MyForm({
    required this.nameController,
    required this.phoneController,
    required this.carNameController,
    required this.carNumberController,
    required this.sourceController,
    required this.destinationController,
    required this.amtController,
    required this.timeController,
    
  });

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  Future<void> createRide() async {
    // Get the input data from the text fields
    final name = widget.nameController.text;
    final phone = widget.phoneController.text;
    final carName = widget.carNameController.text;
    final carNumber = widget.carNumberController.text;
    final source = widget.sourceController.text;
    final destination = widget.destinationController.text;
    final amt = widget.amtController.text;
    final time = widget.timeController.text;
    

    // Reference to the Firestore collection 'rides'
    final ridesCollection = FirebaseFirestore.instance.collection("Rides");

    // Add a new document to 'rides' with the form data
    await ridesCollection.add({
      'Name': name,
      'Phone': phone,
      'Car name': carName,
      'Car number': carNumber,
      'Source': source,
      'Destination': destination,
      'Amount': amt,
      'Time': time,
      
    });

    // Optionally, clear the input fields after adding the data
    widget.nameController.clear();
    widget.phoneController.clear();
    widget.carNameController.clear();
    widget.carNumberController.clear();
    widget.sourceController.clear();
    widget.destinationController.clear();
    widget.amtController.clear();
    widget.timeController.clear();
    

    // Show a confirmation message or navigate to another page if needed

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BottomNav()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 560,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputField(label: 'Name', controller: widget.nameController),
            SizedBox(height: 10),
            InputField(
                label: 'Phone number', controller: widget.phoneController),
            SizedBox(height: 10),
            InputField(label: 'Car name', controller: widget.carNameController),
            SizedBox(height: 10),
            InputField(
                label: 'Car number', controller: widget.carNumberController),
            SizedBox(height: 10),
            InputField(label: 'Source', controller: widget.sourceController),
            SizedBox(height: 10),
            InputField(
                label: 'Destination', controller: widget.destinationController),
            SizedBox(height: 20),
            InputField(label: 'Ride Fare', controller: widget.amtController),
            SizedBox(height: 10),
             InputField(label: 'Time', controller: widget.timeController),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: createRide, // Call the function to create a ride
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Create Ride'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const InputField({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
