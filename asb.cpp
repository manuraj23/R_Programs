#include<iostream>
using namespace std;
int main(){
    int n;
    cout<<"Enter the size of array: ";
    cin>>n;
    cout<<endl<<"Enter elements of array: ";
    int arr[n];
    for (int i=0;i<n;i++){
        cin>>arr[i];
    }
    int  min=arr[0];
    for (int i=1;i<n;i++){
        if (arr[i]<min){
            min=arr[i];
        }
    }
    cout<<endl;
    cout<<min<<endl;
}