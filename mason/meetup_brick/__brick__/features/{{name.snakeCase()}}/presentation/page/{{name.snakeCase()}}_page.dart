import 'package:flutter/material.dart';

{{#isStateless}} 
class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is a stateless {{name}} Page"))
    );
  }
}
{{/isStateless}}


{{^isStateless}}
class {{name.pascalCase()}} extends StatefulWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  State<{{name.pascalCase()}}> createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is a stateful {{name}} Page"))
    );
  }
}
{{/isStateless}}