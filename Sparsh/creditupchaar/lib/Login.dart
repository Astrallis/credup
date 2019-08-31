import 'package:flutter/material.dart';


class Login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height/877.0053118127298;
    double width=MediaQuery.of(context).size.width/462.03206671109666;
    // TODO: implement build
    return Scaffold(
        body: Center(child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(clipBehavior: Clip.antiAlias,elevation: 10,
            child: Container(height: height*500,width: width*400,
            child: Column(children: <Widget>[SizedBox(height: height*10,),
              Container(height: height*70, child: Center(child: Image(image: AssetImage("assets/LOGIN.png"),fit: BoxFit.fitHeight,),),),
              SizedBox(height: height*10,),
              Container(height: 0.5,color: Colors.grey,),
              
              DefaultTabController(
                
  length: 3,
  child: Expanded(
      child: Column(children: <Widget>[
          Container(height: height*50,
                        child: TabBar(
                          indicatorColor: Colors.orangeAccent,
                          unselectedLabelColor: Colors.grey,
                        
                          labelColor: Colors.white,
                tabs: [
                  Tab(child: Text("User",style: TextStyle(color: Colors.black,fontSize: width*14),),),
                  Tab(child: Text("Channel Partner",style: TextStyle(color: Colors.black,fontSize: width*14),),),
                  Tab(child: Text("Sales Associate",style: TextStyle(color: Colors.black,fontSize: width*14),),),
                ],
              ),
            
          ),
          Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TabBarView(
                    children: [
                      FormLogin("USER LOGIN"),
                       FormLogin("CHANNEL PARTNER LOGIN"),
                      FormLogin("SALES ASSOCIATE LOGIN"),
                    ],
                ),
                  ),
          ),
      ],),
      ),
  ),

            ],),
            ),
          ),
        ),),
      
    );
  }
}



class FormLogin extends StatelessWidget{
  String name;
  FormLogin(this.name);
 
  Widget build(BuildContext context) {
      double height=MediaQuery.of(context).size.height/738.18181818;
    double width=MediaQuery.of(context).size.width/392.72727272;
    // TODO: implement build
    return Column(children: <Widget>[
      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          
                          Expanded(
                                                    child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                            hintText: "  Email/Mobile",
                            hintStyle: TextStyle(color: Colors.black54),
                             ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(height: width*10,width: width*10,child: Icon(Icons.perm_contact_calendar,color: Colors.orangeAccent,),),
                          )
                        ],
                      ),
                      ),

                      Padding(padding: EdgeInsets.only(left:20,right: 20,top:10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                                                    child: TextFormField(
                                                      obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                            hintText: "  Password",
                            hintStyle: TextStyle(color: Colors.black54),
                             ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(height: width*10,width: width*10,child: Icon(Icons.vpn_key,color: Colors.orangeAccent,),),
                          )
                        ],
                      ),
                      ),SizedBox(height: height*40,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(onTap: null,                                     //add functionality here
                                                  child: Card(clipBehavior: Clip.antiAlias,
                                                    child: Container(height: height*50,color: Colors.orangeAccent,
                            child: Center(child: Text(name,style: TextStyle(fontSize: 19,),)),),
                          ),
                        ),
                      ),
                    ],);
  }
}