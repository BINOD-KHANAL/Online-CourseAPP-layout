import 'package:college/Models/Courses.dart';
// import 'package:college/icon.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(

        preferredSize:  const Size(double.infinity, 200),

        child: Padding(
          padding: const EdgeInsets.only(top: 20,right:5,left: 5),
          child: Container(

            child: AppBar(
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)

              ),
              backgroundColor: Colors.deepPurpleAccent,
              title:  const Text('Hello!'),
              actions: const [
                Icon(Icons.add),
                SizedBox(width:10),
                Icon(Icons.notification_important),

              ],


        bottom:  PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(

              decoration: InputDecoration(
                hintText: 'Search your course',
                prefixIcon: Icon(Icons.search),
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),

            ),

          ),
        ),
      ),

        body: GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

            itemCount: courses.length,
            itemBuilder: (ctx,index){
              final course =courses[index];
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                    child:Column(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(course.courseIcon,height: 100,)),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(course.courseName),
                        ),
                      ],
                    ),

                    color: Colors.white,
                  ),
              );

            }),

bottomNavigationBar:BottomNavigationBar(items: const [

    BottomNavigationBarItem(
      icon: Icon(Icons.home,color: Colors.deepPurpleAccent),
      label:'Home',


    ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings,color: Colors.black,),
    label:'Setting',


  ),
  BottomNavigationBarItem(
      icon: Icon(Icons.play_circle,color: Colors.black,),
      label: 'Course Playlist',

  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.book,color: Colors.black,),
    label: 'Course Playlist',
  )

]),

    );
  }
}


