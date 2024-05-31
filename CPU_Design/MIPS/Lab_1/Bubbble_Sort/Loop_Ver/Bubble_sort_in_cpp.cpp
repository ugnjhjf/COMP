#include <iostream>

using namespace std;

int main()
{
    int a[5], temp;
    a[0] = 15;
    a[1] = 15;
    a[2] = 110;
    a[3] = 1;
    a[4] = 9;

    bool flag = false;
    for (int i = 0; i < 5 - 1; i++)
        for (int j = 0; j < 5 - 1; j++)
            if (a[j] > a[j + 1])
            {
                temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }

    int n = 5; // 假设数组a的长度为5

    // for (int i = 0; i < 5; i++)
    // {
    //     for (int j(i + 1); j < 5; j++)
    //     {
    //         if (a[i] > a[j])
    //         {
    //             a[i] ^= a[j];
    //             a[j] ^= a[i];
    //             a[i] ^= a[j];
    //         }
    //     }
    // }

    for (int j = 0; j < 5; j++)
        cout << a[j] << " ";
    return 0;
}