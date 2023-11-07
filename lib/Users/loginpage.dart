import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var emailController = TextEditingController();
  var formKey = GlobalKey().obs;
  var passwordController = TextEditingController();
  var isObscure = true.obs;
}

class LoginScreen extends StatelessWidget {
  var ctrl = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, cons) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: cons.minHeight,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // login screen header
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 285,
                    child: Image.asset(
                      "assets/images/pic4.jpg",
                      fit: BoxFit.cover,
                    )),

                // login screen body

                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 8),
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(60),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, -3))
                      ]),
                  child: Column(
                    children: [
                      Form(
                          key: ctrl.formKey.value,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: ctrl.emailController,
                                validator: (value) =>
                                    value == "" ? "please write email" : null,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.black,
                                    ),
                                    hintText: "email ...",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60)),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide:
                                            BorderSide(color: Colors.white60)),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 6),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Obx(
                                () => TextFormField(
                                  controller: ctrl.passwordController,
                                  obscureText: ctrl.isObscure.value,
                                  validator: (value) => value == ""
                                      ? "please write password"
                                      : null,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.black,
                                      ),
                                      suffixIcon: Obx(
                                        () => GestureDetector(
                                          onTap: () {
                                            ctrl.isObscure.value =
                                                !(ctrl.isObscure.value);
                                          },
                                          child: Icon(ctrl.isObscure.value
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                        ),
                                      ),
                                      hintText: "password ...",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.white60)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.white60)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.white60)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Colors.white60)),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      fillColor: Colors.white,
                                      filled: true),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                //borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(30),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 28),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(children: [
                                Text("Vous n'avez pas de compte !"),
                           
                                TextButton(onPressed: (){}, child: Text("inscrivez vous", style: TextStyle(color: Colors.purpleAccent),))
                              ],)
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
