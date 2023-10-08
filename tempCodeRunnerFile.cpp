#include <iostream>
using namespace std;

int main () {
    cout << "=== Program Pembayaran ===" << endl;
    int total_belanja;
    cout << "Masukkan total belanja" << endl;
    cin >> total_belanja;

    if (total_belanja > 100000) {
        cout << "Selamat! Anda dapat hadiah" << endl;
    }
    cout << "Terimakasih sudah berbelanja di toko kami" << endl;
    return 0;
}