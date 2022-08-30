# Flutter App

A new Flutter project.

## Getting Started

Descriptive Questions.


## What is the difference between Hot Reload and Hot Restart?
### Ans
Hot Reload:
Flutter hot reload features works with combination of Small r key on command prompt or Terminal. Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine. After done updating the Code Dart Virtual Machine update the app UI with widgets. Hot Reload takes less time then Hot restart. There is also a draw back in Hot Reload, If you are using States in your application then Hot Reload preservers the States so they will not update on Hot Reload our set to their default values.

Hot restart is much different than hot reload. In Hot restart it destroys the preserves State value and set them to their default. So if you are using States value in your application then After every hot restart the developer gets fully compiled application and all the states will set to their defaults. The app widget tree is completely rebuilt with new typed code. Hot Restart takes much higher time than Hot reload.

## What are the different ways we can create a custom widget?
### Ans
While designing a complex application we find that most of our UI is repeated, so to avoid writing code repetatively we will be defining a custom widgets. We can create a custom widgets using normal function declaration but its return type should be Widget. We can also pass argments so than will become dynamic custom widget. 
Other way is to create a mixins and use thems.
Mixins are a way of reusing a class’s code in different class hierarchies. For example when we have 4 bottom tab and each one has same header but different color and  title. We will create a mixin and use it in here with the help of "with" keyword followed by mixin name.

example:
mixin BaseHeaderMixin extends StatefulWidget> on State<PAGE>{

   @override
  Widget build(BuildContext context) {
    return Row(children:[Text(title,style:Textstyle(backgroundColor:bgColor))]);
    }

    String title;
    Color bgColor;
}

// use mixins on your classes via the `with` keyword
class BottomPage1 extends StatefulWidget with BaseHeaderMixin {

    @override
  Color? bgColor() {
    return "green";
  } 
   @override
  Color? title() {
    return "Screen 1";
  } 
}
class BottomPage2 extends StatefulWidget with BaseHeaderMixin {

    @override
  Color? bgColor() {
    return "Red";
  } 
   @override
  Color? title() {
    return "Screen 2";
  } 
}
}