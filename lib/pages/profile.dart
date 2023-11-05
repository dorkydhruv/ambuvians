import 'package:ambuvians/pages/upload_doc.dart';
import 'package:ambuvians/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 249, 243, 1),
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: 
           Column(mainAxisAlignment: MainAxisAlignment.center,children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('src/man.png'),
            ),
            const SizedBox(height: 10,),
            const Text(
                "Ambuvians",
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
               ),
            ),
            const SizedBox(height: 10,),
                 Container(
                  height: MediaQuery.of(context).size.height * 0.73,
                  width: MediaQuery.of(context).size.width ,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    color: Color.fromARGB(185, 255, 203, 199)
                  ),
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 50,),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(20),
                      child: ListView(

                        children: [
                          Widgets().textHead("AMBU ID:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("AMBV-0001",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Age:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("21",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Blood Group:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("B+",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Address",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("Kathmandu",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Contact Number:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("9812345678",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Email Id:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("exmaple@somethng.com",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Aadhar Number:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("1234567890",size: 16),const SizedBox(height: 5,),
                          Widgets().textHead("Medical Benificiary Id:",size: 16),const SizedBox(height: 5,),
                          Widgets().textSubHead("1EG4-TES-M416",size: 16),const SizedBox(height: 15,),
                          Row(
                            children: [button(context: context,str: "Edit profile"),const SizedBox(width: 10,),GestureDetector(onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (ctc)=> const UploadDocuments()));
                            },child: button(context: context,str: "Upload Document",color: Colors.red),)],
                          )
                        ],
                      ),

                    ),
                  ),
                 ) 
          ]),
        ),
      );
    
  }
  button({required BuildContext context,Color color=Colors.red,required String str}){
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(color: color,
      borderRadius: BorderRadius.circular(20)),
      child: Center(child: Text(
str,
style: const TextStyle(
fontSize: 16,
color: Colors.white,
fontWeight: FontWeight.w500,
)
)),
    );
  }
}