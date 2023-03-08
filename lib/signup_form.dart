import 'package:flutter/material.dart';

import 'animated_hover.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
          child: Column(
        children: [
          AnimatedHover(
            offset: const Offset(6, 6),
            hoverColor: Colors.white,
            size: const Size(360, 56),
            bgColor: Colors.white,
            border: Border.all(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                onSaved: (name) {},
                decoration: const InputDecoration(
                  hoverColor: Colors.white,
                  hintText: "Full name",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: AnimatedHover(
              offset: const Offset(6, 6),
              hoverColor: Colors.white,
              size: const Size(360, 56),
              bgColor: Colors.white,
              border: Border.all(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextFormField(
                  onSaved: (email) {},
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
            ),
          ),
          AnimatedHover(
            offset: const Offset(6, 6),
            hoverColor: Colors.white,
            size: const Size(360, 56),
            bgColor: Colors.white,
            border: Border.all(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: TextFormField(
                onSaved: (password) {},
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
