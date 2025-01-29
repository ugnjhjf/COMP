#include <iostream>

using namespace std;

int main()
{
    int a = 0, b = 1, ans, count;
    cin >> count;
    for (int i = 0; i < count; i++)
    {
        ans = a + b;
        a = b;
        b = ans;
        cout << ans << " ";
    }
    return 0;
}