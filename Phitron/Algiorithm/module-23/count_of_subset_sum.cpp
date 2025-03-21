#include<bits/stdc++.h>
using namespace std;
int dp[1000][1000];
int subset_sum(vector<int>arr, int s, int n)
{
    if(n==0)
    {
        if(s==0) return 1;
        else return 0;
    }
    if(dp[n][s] != -1){
        return dp[n][s];
    } 
    if(arr[n-1] <=s)
    {
        int a = subset_sum(arr,s-arr[n-1], n-1);
        int b = subset_sum(arr,s, n-1);
        return dp[n][s] = a + b;
    }
    else {
        return dp[n][s] = subset_sum(arr, s, n-1);
    }
}
int main(){

    int n;
    cin>>n;
    vector<int>arr(n);
    for(int i =0; i<n; i++)
    {
        cin>>arr[i];
    }
    int s; cin>>s;
    for(int i =0; i<=n; i++)
    {
        for(int j =0; j<=s; j++)
        {
            dp[i][j] = -1;
        }
    }
    cout<<subset_sum(arr,s,n)<<endl;
    
    return 0;
}