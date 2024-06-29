import 'package:aast_restuarant/features/login/presentation/controller/login_cubit/login_cubit.dart';
import 'package:aast_restuarant/features/login/presentation/controller/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:aast_restuarant/features/interface/presentation/view/interface_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key}); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blue[100], // Base color for the background
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.indigo.shade900,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -50,
                  top: -50,
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'images/AAST.png',
                      width: 500.0,
                      height: 500.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'images/splash.png',
                width: 190.0,
                height: 130.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(flex: 2),
                Container(
                  width: 300.0,
                  height: 60.0,
                  alignment: const Alignment(0.0, -0.9),
                  child: const Text(
                    'Main Restaurant',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEEB340),
                    ),
                  ),
                ),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                TextField(
                  controller: LoginCubit.get(context).emailController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Registration Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: LoginCubit.get(context).passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Interface(),),
                      );
                    }
                    if (state is LoginFailure) {
                      QuickAlert.show(
                        context: context,
                        type: QuickAlertType.error,
                        text: state.eMessage,
                      );
                    }
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: LoginCubit.get(context).login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[50],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: state is LoginLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : const Text('SIGN IN'),
                    );
                  },
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
