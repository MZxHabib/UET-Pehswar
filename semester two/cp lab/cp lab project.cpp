#include <iostream>
using namespace std;

class A{
private:
int a;
public:
 int b;
 protected:
int c;
 public:
A():a(0),b(0),c(0){}
    A(int x,int y,int z):a(x),b(y),c(z){}
    void showA(){
    cout<<"a:"<<endl;
    cout<<"b:"<<endl;
    cout<<"C:"<<endl;
}

};
class b: public A{
private:
    int d;
public:
B():d(0),A(){}
    B(int x,int y, int z, int W):d(W),A(x,y,z){}
    void showB(){
    cout<<"a:"<<endl;
    cout<<"b:"<<endl;
    cout<<"C:"<<endl;
    cout<<"D:"<<endl;
    }
};
int main(){

A objA(2,3,4);
cout<<"A's data:"<<endl;
objA.show();

B objB(2,3,4,5);
cout<<"B's data:"<<endl;
objB.show();

return 0;


}
