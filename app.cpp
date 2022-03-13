#include <iostream>
#include <fstream>
#include <string>

using namespace std;
int makeit(string command){
    cout << "starting to compile ...";
    std::string cmd("pyinstaller --onefile ");
    cmd += command;
    system(cmd.c_str());
    cout << "if there was no folder cald 'dist' means that compilling was unable!";
    return 0;
}
int start(){
    system("cls");
    cout << "PLEASE ENTER THE FILE NAME!\n";
    string response;
    cout << "> ";
    getline(cin, response);
//    cout << response;
    makeit(response);
}


int main() {
    cout << "[MENU]\n[1] Start\n[2] Exit\n[END]" << std::endl;
    string resp;
    cout << "ENTER: ";
    getline(cin, resp);
    if (resp == "1"){
        start();
    }
    if (resp == "2"){
        exit;
    }
    return 0;
}
