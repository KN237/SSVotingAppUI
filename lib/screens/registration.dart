import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';
import 'package:secret_story/widgets/appbar_helper.dart';
import 'package:secret_story/widgets/appbutton.dart';
import 'package:secret_story/widgets/custom_drawer.dart';
import 'package:secret_story/widgets/social_button.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: AppBarMenuButton(
          myKey: _key,
        ),
        backgroundColor: grey,
        title: const AppBarHeroLogo(),
        actions: const [
          AppBarAction(),
        ],
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            grey,
            grey.withOpacity(0.2),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              addVerticalSpace(60),
              const Text(
                'INSCRIPTION',
                style: title1,
              ),
              addVerticalSpace(30),
              const Text(
                'Inscrivez-vous avec',
                style: body1,
              ),
              addVerticalSpace(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(),
                  SocialButton(
                    image: 'assets/images/google.png',
                    method: () {},
                  ),
                  SocialButton(
                    image: 'assets/images/facebook.png',
                    method: () {},
                  ),
                  Container(),
                ],
              ),
              addVerticalSpace(50),
              const Text(
                'Ou remplissez le formulaire',
                style: body1,
              ),
              addVerticalSpace(20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                height: 50,
                child: TextField(
                  cursorColor: orange,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Nom complet*',
                    hintStyle: TextStyle(
                      color: Colors.black38.withOpacity(0.4),
                      fontFamily: 'sans-serif',
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 50,
                      color: Colors.black26.withOpacity(0.2),
                      child: Center(
                        child: CountryCodePicker(
                          onChanged: (value) {},
                          showCountryOnly: false,
                          showFlag: false,
                          hideSearch: true,
                          initialSelection: 'CM',
                          dialogSize: const Size(150, 400),
                          searchDecoration: InputDecoration(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.79,
                      height: 50,
                      child: TextField(
                        cursorColor: orange,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Numéro de téléphone*',
                          hintStyle: TextStyle(
                            color: Colors.black38.withOpacity(0.4),
                            fontFamily: 'sans-serif',
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                height: 50,
                child: TextField(
                  cursorColor: orange,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.black38.withOpacity(0.4),
                      fontFamily: 'sans-serif',
                    ),
                    filled: true,
                    fillColor: grey.withOpacity(0.5),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              addVerticalSpace(30),
              AppButton(
                method: () {},
                title: 'VALIDEZ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
