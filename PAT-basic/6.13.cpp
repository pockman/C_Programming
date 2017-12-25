#include <iostream>
using namespace std;

#define MAXLEN 50
typedef int KeyType;

typedef struct { KeyType key; } elementType;

typedef struct {
  elementType data[MAXLEN + 1];
  int len;
} SeqList;

void creat(SeqList &L) {
  int i;
  cin >> L.len;
  for (i = 1; i <= L.len; i++)
    cin >> L.data[i].key;
}

int binSearch(SeqList T, KeyType k);

int main() {
  SeqList L;
  KeyType k;
  creat(L);
  cin >> k;
  int pos = binSearch(L, k);
  if (pos == 0)
    cout << "NOT FOUND" << endl;
  else
    cout << pos << endl;
  return 0;
}

int _bs(SeqList T, KeyType k, int low, int high) {
  int mid = (low + high) / 2;
  if (low > high)
    return 0;
  if (k > T.data[mid].key)
    return _bs(T, k, mid + 1, high);
  if (k < T.data[mid].key)
    return _bs(T, k, low, mid - 1);

  // found
  return mid;
}

int binSearch(SeqList T, KeyType k) { return _bs(T, k, 1, T.len ); }
