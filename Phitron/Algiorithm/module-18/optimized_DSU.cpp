#include<bits/stdc++.h>
using namespace std;

int parent[]={-1,-1,1,1,1,-1,5,5,5,7};
int lavel[]={0,2,1,1,1,3,1,1,1,1};// here we just need level of leader.

int dsu_find(int s)
{
    int current= s;
    while (-1 != parent[current])
    {
        current = parent[current];
    }
    return current;
}
void dsu_union(int a, int b)
{
    int leaderA = dsu_find(a);
    int leaderB = dsu_find(b);
    
    if(leaderA != leaderB)
    {
        int lavelA = lavel[leaderA];
        int lavelB = lavel[leaderB];

        if(lavelA > lavelB)
        {
            parent[leaderB] = leaderA;// new leader A.
            lavel[leaderA]++; //leader of lavel increment.
        }
        else{
            parent[leaderA] = leaderB;// new leader B.
            lavel[leaderB]++; //leader of lavel increment.
        }
    }
}

int main(){
    int leader;
    leader = dsu_find(9);
    cout<<leader<<endl;
    dsu_union(1,8);
    cout<<dsu_find(9)<<endl;
return 0;
}