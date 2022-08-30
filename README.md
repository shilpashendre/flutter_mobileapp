# Flutter App

A new Flutter project.

## Getting Started

Descriptive Questions.


## What is the difference between Hot Reload and Hot Restart?
### Hot Reload:
Flutter hot reload features works with combination of Small r key on command prompt or Terminal. Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine. After done updating the Code Dart Virtual Machine update the app UI with widgets. Hot Reload takes less time then Hot restart. There is also a draw back in Hot Reload, If you are using States in your application then Hot Reload preservers the States so they will not update on Hot Reload our set to their default values.

### Hot Restart:

Hot restart is much different than hot reload. In Hot restart it destroys the preserves State value and set them to their default. So if you are using States value in your application then After every hot restart the developer gets fully compiled application and all the states will set to their defaults. The app widget tree is completely rebuilt with new typed code. Hot Restart takes much higher time than Hot reload.


