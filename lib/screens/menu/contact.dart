import 'package:flutter/material.dart';
/*
class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Contacts Page"),
      ),
    );
  }
}*/
class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  
  String _phoneNumber;
  String _commentaire;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Nom est obligatoire !!';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email obilgatoire';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Entrer une adresse mail valide !!';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  



  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _buildCommentaire() {
    return TextFormField(
    decoration: InputDecoration(labelText: 'Commentaire'),
     validator: (String value) {
        if (value.isEmpty) {
          return 'Comment is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _commentaire = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Contact"),backgroundColor: Colors.orange,),
      
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildEmail(),
                
                _buildPhoneNumber(),
                _buildCommentaire(),
                SizedBox(height: 100),
                RaisedButton(
                   color: Colors.green,

                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_email);
                    print(_phoneNumber);
                    print(_commentaire);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}