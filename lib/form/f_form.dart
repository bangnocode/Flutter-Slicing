// lib/form.dart
import 'package:flutter/material.dart';

class FForm extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FForm> {
  final _formKey = GlobalKey<FormState>();
  String? _dropdownValue;
  bool _switchValue = false;
  bool _checkboxValue = false;
  String _radioValue = 'Laki-laki';
  TextEditingController _nameController = TextEditingController();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contoh form pendaftaran olimpiade'),
          backgroundColor: const Color.fromARGB(255, 103, 32, 145),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama wajib diisi';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Pilih Kategori Olimpiade',
                      border: OutlineInputBorder(),
                    ),
                    value: _dropdownValue,
                    items: ['Matematika', 'Fisika', 'Kimia', 'Informatika']
                        .map((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _dropdownValue = newValue;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Kategori wajib dipilih';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  SwitchListTile(
                    title: Text('Setuju dengan Syarat dan Ketentuan'),
                    value: _switchValue,
                    onChanged: (bool value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Radio<String>(
                        value: 'Laki-laki',
                        groupValue: _radioValue,
                        onChanged: (String? value) {
                          setState(() {
                            _radioValue = value!;
                          });
                        },
                      ),
                      Text('Laki-laki'),
                      Radio<String>(
                        value: 'Perempuan',
                        groupValue: _radioValue,
                        onChanged: (String? value) {
                          setState(() {
                            _radioValue = value!;
                          });
                        },
                      ),
                      Text('Perempuan'),
                    ],
                  ),
                  SizedBox(height: 16),
                  CheckboxListTile(
                    title: Text('Daftar untuk Semua Kategori'),
                    value: _checkboxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkboxValue = value!;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text(
                      _selectedDate == null
                          ? 'Pilih Tanggal Lahir'
                          : 'Tanggal Lahir: ${_selectedDate!.toLocal()}'
                              .split(' ')[0],
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _showDialog(context);
                    },
                    child: Text('Kirim Form'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _showBottomSheet(context);
                    },
                    child: Text('Tampilkan BottomSheet'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _showSnackbar(context),
                    child: Text('Tampilkan Snackbar'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  void _showSnackbar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Ini adalah Snackbar'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content: Text('Apakah Anda yakin ingin mengirim form?'),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Kirim'),
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Form berhasil dikirim!')),
                );
              },
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk Menampilkan BottomSheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          children: <Widget>[
            ListTile(title: Text('Pilih Kategori: Matematika')),
            ListTile(title: Text('Pilih Kategori: Fisika')),
            ListTile(title: Text('Pilih Kategori: Kimia')),
            ListTile(title: Text('Pilih Kategori: Informatika')),
          ],
        );
      },
    );
  }
}
