import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interactifity & Form")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Masukkan Nama",
                  labelText: "Nama",
                ),
                validator: (value) =>
                    value!.isEmpty ? "Nama tidak boleh kosong!" : null,
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Sukses"),
                        content: Text('Halo ${_nameController.text}!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },

                child: Text("Submit"),
              ),

              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Ini Button Sheet dari GestureDetector'),
                    ),
                  );
                },

                child: const Text(
                  "Klik di sini",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}