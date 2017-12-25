for (int i=0; i<10; i++) {
  for (int j=0; j<10; j++) {
    if (j==8) break;

    if(j==3) continue;
    printf("%d\n", i*j);
  }
}

