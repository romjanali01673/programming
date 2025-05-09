import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_hisab/Sign_up.dart';
import 'package:meal_hisab/home.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  String pass = "";
  String email = "";


  void signIn(){
    if(FormKey.currentState!.validate()){

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange.shade700,
              Colors.orange.shade500,
              Colors.orange.shade200,
            ],
          ), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.all(10), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInUp(duration: Duration(milliseconds: 1000),child: Text("SignIn", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                  SizedBox(height:10,),
                  FadeInUp(duration: Duration(milliseconds: 1200),child: Text("Welcome Back!",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),)),
                ],  
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child:FadeInUp(
                duration: Duration(milliseconds: 1400),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                    
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),                              )
                              ],                  
                            ),
                            child: Form(
                              key: FormKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  
                               
                              
                                  FadeInUp(
                                    duration: Duration(milliseconds: 1600),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                      ),
                                      child: TextFormField(
                                      onChanged: (value){
                                        email = value.trim();
                                      },
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Email is required';
                                        }
                                        final pattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                                        if (!pattern.hasMatch(value)) {
                                          return 'Enter a valid email';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        label: Text("Email"),
                                        border: InputBorder.none,
                                                      
                                      ),
                                    ),
                                    ),
                                  ),
                              
                                 
                              
                                  FadeInUp(
                                    duration: Duration(milliseconds: 1800),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                      ),
                                      child: TextFormField(
                                        onChanged: (value){
                                          pass = value.trim();
                                        },
                                        validator: (value) {
                                          if(value.toString().contains(" ")){
                                            return "password can't contain SPACE";
                                          }
                                          if(value.toString().length<8){
                                            return "pass should be al least 8 character";
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          label: Text("Password",),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeInUp(duration: Duration(milliseconds:2200),
                            child: SizedBox(
                              width: 200,
                              child: getButton(label: "Sign In", ontap: (){
                                signIn();
                                
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>MemberHomeScreen()));
                                },),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // FadeInUp(duration:Duration(milliseconds:2400), child: Text("-Or-\nContinue With Socail Media-",textAlign: TextAlign.center,)),
                          // SizedBox(
                          //   height: 30,
                          // ),
                          // FadeInUp(
                          //   duration:Duration(milliseconds:2600),
                          //   child:Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       getButton(label: "Facebook",icon: Icon(Icons.facebook),ontap:(){}),
                          //       SizedBox(
                          //         width: 20,
                          //       ),
                          //       getButton(label: "Github", icon: Icon(Icons.facebook_outlined), ontap:(){}),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(duration:Duration(milliseconds:2800),child: HaveAccountWidget(label: "Don't Have An Account? ", acctionText: "SignUp", ontap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));
                          })),
                        ],
                      ),
                    ),
                  )
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    super.key,
    this.label,
    required this.acctionText,
    required this.ontap,
    });

  final String ?label;
  final String acctionText;
  final Function() ontap; 
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label??"" , style: TextStyle(color: Colors.blue, fontSize: 20),),
        TextButton(onPressed: ontap, child: Text(acctionText,style: TextStyle(color: Colors.orange, fontSize: 20),),),
      ],
    );
  }
}