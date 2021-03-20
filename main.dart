import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/Gojoramsay.png',
                 width: 500,
                 height: 300,
                 fit: BoxFit.cover,
              ),
              TitelSection(),
              ButtonSection(),
              DesciptionSection(),
            ],
        )),
      ),
      builder: EasyLoading.init(),
      );
  }
}

int _likeCount = 41; 
bool _isLiked = true;

class TitelSection extends StatefulWidget {
  TitelSection({Key key}) : super(key: key);

  @override
  _TitelSectionState createState() => _TitelSectionState();
}

class _TitelSectionState extends State<TitelSection> {
  @override
  Widget build(BuildContext context) {
       
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(''),
        Text(''),
        Text('Gojo Ramsay', style: TextStyle(fontWeight:(FontWeight.bold)),),
        Text('The greatest jujutsu sorcerer', style: TextStyle(color: Colors.black54),),
        Text(''),
        Text(''),
        ],
      ),
        Row(
          children: [
            IconButton(icon: (_isLiked ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red,
            onPressed: _toggleLike,
            ), 
             Text('$_likeCount'),
          ],   
        ),
        ],  
    );
  }
void _toggleLike(){
  setState(() {
     if(_isLiked){
      _likeCount -= 1;
      _isLiked = false;
         EasyLoading.showInfo('Unliked'); 
    }else{
      _likeCount += 1;
      _isLiked = true;  
         EasyLoading.showSuccess('Liked');
    }
  }); 
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Column(children: [
          Icon(Icons.phone,color: Colors.blue,),
          Text(''),
          Text('CALL',style: TextStyle(color: Colors.blue),),
        ],),
        Column(children: [
          Icon(Icons.assistant_navigation,color: Colors.blue,),
          Text(''),
          Text('ROUTE',style: TextStyle(color: Colors.blue),),
        ],),
        Column(children: [
          Icon(Icons.share,color: Colors.blue,),
          Text(''),
          Text('SHARE',style: TextStyle(color: Colors.blue),),
        
        ],)
      ],
      ),
    );
  }
}

class DesciptionSection extends StatelessWidget {
  const DesciptionSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Column(children: [ 
          Text(''),
          Container(
          child: Container(
            child : Text (
              'Ramsay Gojo is a tall man, towering over his students, and is considered to be very attractive by many people. He has white hair that s often spiked up, but Gojo lets it down when he is in more casual attire. Gojo has bright blue eyes, but they are usually covered by his signature black blindfold or a pair of dark sunglasses.'),
            constraints: BoxConstraints(maxHeight: 300,maxWidth: 400,minHeight: 150,minWidth: 150),
          ),
        )
        ],),
      ],),
    );
  }
}


     