import 'package:dating_app/authenticationScreen/registration_screen.dart';
import 'package:dating_app/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  //Variável com o objetivo de mostrar a barra de progresso, enquanto se realizar o login
  bool showProgressbar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),

              Image.asset(
                "images/logo.png",
                width: 300,
              ),

              const Text(
                "Bem-Vindo!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "Por favor, insira suas credenciais de LOGIN.",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),

              //Campo de inserção de Email
              SizedBox(
                //Tamanho adaptado ao contexto do usuário(Tamanho da Tela)
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              //Campo de inserção de Senha
              SizedBox(
                //Tamanho adaptado ao contexto do usuário(Tamanho da Tela)
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: "Senha",
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //Botão de Login
              Container(
                width: MediaQuery.of(context).size.width - 36,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  onTap: () {

                  },
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Row(
                //Alinhamento alternativo ao Widget Center
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Você possui uma conta? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(RegistrationScreen());
                    },
                    child: const Text("Criar Aqui",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              showProgressbar == true
                  ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
