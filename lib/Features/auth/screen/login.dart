import 'package:campus_connect/Features/auth/controller/aut_conrtroller.dart';
import 'package:campus_connect/core/common/loader.dart';
import 'package:campus_connect/core/common/sign_in_button.dart';
import 'package:campus_connect/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
/*
class LoginScreen extends ConsumerWidget{

  const LoginScreen({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    // ignore: prefer_const_constructors
    final isLoading =  ref.watch(authControllerProvider);  
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 50,
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text(
              'Skip',
             style: TextStyle(
              fontWeight: FontWeight.bold,    
             ),
            ),
            ),
          ],
          ),
          body: isLoading 
          ? const Loader() 
          : Column(
            children: [
              const SizedBox(height: 30,),
              const Text('Lets get started', 
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset (Constants.illusPath, height: 400,),
              ),
              const SizedBox(height: 20),
              const SignInButton(),
            ],
          ),
    ); 
  }
}*/

import '../../../responsive/responsive.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void signInAsGuest(WidgetRef ref, BuildContext context) {
    ref.read(authControllerProvider.notifier).signInAsGuest(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 80,
          
        ),
        actions: [
          TextButton(
            onPressed: () => signInAsGuest(ref, context),
            child: const Text(
              'Skip',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: isLoading
          ? const Loader()
          : Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Explore the App Now',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    Constants.loginEmotePath,
                    height: 400,
                  ),
                ),
                const SizedBox(height: 20),
                const Responsive(child: SignInButton()),
              ],
            ),
    );
  }
}
