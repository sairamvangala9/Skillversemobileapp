import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration Form ',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Student Registration Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
  String _email;
  String _number;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your first and last name',
                      labelText: 'Name',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter father first and last name',
                      labelText: 'Father Name',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your MM/DD/YYYY',
                      labelText: 'Dob',
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (val) =>
                    !( !(val.length == 10) && val.isNotEmpty) ?  null: 'enter valid number' ,
                    onSaved: (val) => _number = val,
                    obscureText: false,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter an alternative phone number',
                      labelText: 'Alternative Phone',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (val) =>
                    !( !(val.length == 10) && val.isNotEmpty) ? null :'enter valid number',
                    onSaved: (val) => _number = val,
                    obscureText: false,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter a email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) =>
                    !( !val.contains('@') && val.isNotEmpty) ? null: 'Not a valid email.',
                    onSaved: (val) => _email = val,
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.my_location),
                      hintText: 'Enter your Address',
                      labelText: 'Address',
                    ),
                  ),
//                  new InputDecorator(
//                    decoration: const InputDecoration(
//                      icon: const Icon(Icons.color_lens),
//                      labelText: 'Color',
//                    ),
//                    isEmpty: _color == '',
//                    child: new DropdownButtonHideUnderline(
//                      child: new DropdownButton<String>(
//                        value: _color,
//                        isDense: true,
//                        onChanged: (String newValue) {
//                          setState(() {
//                            _color = newValue;
//                          });
//                        },
//                        items: _colors.map((String value) {
//                          return new DropdownMenuItem<String>(
//                            value: value,
//                            child: new Text(value),
//                          );
//                        }).toList(),
//                      ),
//                    ),
//                  ),
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}