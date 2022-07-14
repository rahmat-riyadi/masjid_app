import 'package:flutter/material.dart';
import 'package:mesjid_app/utils/pallete.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20) + const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: Pallete.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'silahkan masukkan Email dan\nPassword anda!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Pallete.light,
                      height: 1.4
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10) + const EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 13),
                        child: Text('Username', style: TextStyle(fontSize: 14)),
                      ),
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xFFF1F3F6),
                          filled: true,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 13),
                        child: Text('Passowrd', style: TextStyle(fontSize: 14)),
                      ),
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xFFF1F3F6),
                          filled: true,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: const Text('lupa password ?'),
                      onPressed: () => print('lupa password clicked')
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Pallete.primary,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: TextButton(
                    onPressed: () => print('masuk'),
                    child: const Text(
                      'masuk', 
                      style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}