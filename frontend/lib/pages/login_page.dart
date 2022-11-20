import 'package:flutter/material.dart';
import 'package:frontend/pages/builder_pages/dashboard_builder.dart';
import 'package:frontend/pages/dashboard_page.dart';
import 'package:frontend/theme/custom_themes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Candlestick icon
                Icon(
                  Icons.candlestick_chart_outlined,
                  size: 140,
                  color: Theme.of(context).iconTheme.color,
                ),

                /// Hello Text
                Text(
                  'Hello There!',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 25),
                Text(
                  'Nice to see you here!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 120),

                /// Email input field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle:
                              TextStyle(color: Theme.of(context).hintColor),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// Password input field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Theme.of(context).hintColor),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardBuilder()),
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        )),
                  ),
                ),
                const SizedBox(height: 20),

                /// Not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Member?',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      ' Register Now!',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
