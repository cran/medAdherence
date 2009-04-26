

void cma(int *n, int *rxmax,int *refills,int *supp) {
  int i,j;
  int rx[*n* *rxmax]; ;
  
  for (i=0;i<*n* *rxmax;i++) 
	     rx[i]=*(refills+i);
      
  for (i=0;i<*n;i=i+1) {
   supp[i]=0;
    for (j=*rxmax *i;j<(i+1) * *rxmax-1;j++)
      if (rx[j]>0)
        supp[i] = supp[i] + rx[j]; 
    }
                 
}

