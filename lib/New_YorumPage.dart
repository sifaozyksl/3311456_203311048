import 'package:flutter/material.dart';

class NewPsychologyTopicPage extends StatefulWidget {
  @override
  _NewPsychologyTopicPageState createState() => _NewPsychologyTopicPageState();
}

class _NewPsychologyTopicPageState extends State<NewPsychologyTopicPage> {
  final _formKey = GlobalKey<FormState>();

  late String _title;
  late String _description;
  late String _category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Konu Ekle'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Konu Başlığı',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen bir başlık girin.';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _title = newValue!;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Konu Açıklaması',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen bir açıklama girin.';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _description = newValue!;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Konu Kategorisi',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen bir kategori girin.';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _category = newValue!;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pop(
                        context,
                      );
                    }
                  },
                  child: Text('Kaydet'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
