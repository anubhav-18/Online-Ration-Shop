// #include <bits/stdc++.h>
#include<iostream>
#include<stack>
using namespace std;

int prec(char c) {
    if(c == '^') {
        return 3 ;
    }
    else if (c=='/' || c=='*') {
        return 2 ;
    }
    else if(c=='+' || c=='-') {
        return 1 ;
    }
    else {
        return -1 ;
    }
}

string infixtopostfix( string s ) {
    stack<char> st;
    string ans ;
    for(int i = 0 ; i<s.length() ;  i++) {
        char ch = s[i] ;
        //opernads
        if( (ch >='a' && ch <='z') || (ch >= 'A' && ch <= 'Z') || (ch>='0' && ch<='9') ) {
            ans += ch ;
        }
        //operator '('
        else if(ch == '(') {
            st.push('(');
        }
        //operator ')'
        else if (ch == ')') {
            while(st.top()!='(') {
                ans+=st.top();
                st.pop();
            }
            st.pop();
        }
        //operator +-*/
        else {
            while(!st.empty() && prec(s[i]) <= prec(st.top())) {
                ans+=st.top();
                st.pop();
            }
            st.push(ch);  
        }
    }

    while(!st.empty()) {
            ans+=st.top();
            st.pop();
    }

    cout << ans << endl ;
}

int main(){
    int t ;
    cin >> t ;
    while(t--) {
        string exp ;
        cin >> exp ;
        infixtopostfix(exp);
    }
    return 0;
}