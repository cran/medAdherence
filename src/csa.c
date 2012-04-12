
/* void R_CheckUserInterrupt(void);*/

void csa(int *n, int *rxmax,int *rxdate, int *refills,int *ncsa, int*ngap) {
  int i;
  int cap[*n* *rxmax][2];
  int rx[*n* *rxmax][2];
      
  for (i=0;i<*n* *rxmax;i++) {
	 rx[i][0]=*(rxdate+i);
     rx[i][1]=*(refills+i);
     }
 
       
  for (i=0;i<*n* *rxmax;i=i+1) 
	  { 
       cap[i+1][0]=rx[i][1]; 
       cap[i+1][1]=rx[i+1][0] - rx[i][0];             
       }       
  for (i=0;i<*n* *rxmax;i=i+1) 
      if (rx[i][0] == 0) {
      cap[i][0]=0; 
      cap[i][1]=0;   
   } 
   
  for(i=0;i<*n;i=i+ 1) {     
       cap[i * *rxmax][0]=0; 
       cap[i * *rxmax][1]=0;
   }
                 
 for (i=0;i<*n* *rxmax-1;i=i+1) {             
     *(ncsa+i+1) = cap[i+1][0]; 
     *(ngap+i+1) = cap[i+1][1];
     
}
}
         

              


