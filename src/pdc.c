
/*void R_CheckUserInterrupt(void);*/

void pdc(int *n, int *m, int *rxmax,int *rxdate, int *refills,int *rxs, int *supplies) {
  int i,j,k, total;
  int cap[*n][*m];
  int rx[*n* *rxmax][2]; 
    
  for (i=0;i<*n;i++)
    for (j=0;j<*m;j++)
	  cap[i][j]=0;
  
  for (i=0;i<*n* *rxmax;i++) {
	 rx[i][0]=*(rxdate+i);
     rx[i][1]=*(refills+i);
     }
 
  for (i=0;i<*n;i=i+1) 
	  for (j=*rxmax *i;j<(i+1) * *rxmax-1;j++) 
        if (rx[j][0] > 0) 
          for (k = rx[j][0]; k < rx[j][0] + rx[j][1]; k++)
	         if (k<*m) {
		         cap[i][k]=1; 
	             /*R_CheckUserInterrupt();*/
	             }
     
  for (j=0;j<*n;j++) {
	total=0;         
    for (i=0;i<*m;i++) {   
      total= total+cap[j][i];
      rxs[j]=total;    
      } 
  } 
      
  for (i=0;i<*n;i=i+1){
    supplies[i]=0; 
    for (j=*rxmax *i;j<(i+1) * *rxmax-1;j++)
    supplies[i] = supplies[i] + rx[j][1]; 
    }
    
              
}

