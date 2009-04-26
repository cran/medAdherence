
void cmos(int *x,int *y, int *n, int *rxmax, int *surp, int *defic){
	int i,j;
	for (i=0;i<*n;i=i+1) 
		for (j=0;j<*rxmax;j++){
			
			if ((x[i* *rxmax+j]>0) & (y[i* *rxmax+j]<0) & (j<*rxmax-1))  {
				y[i* *rxmax+j] = y[i* *rxmax+j] + x[i* *rxmax+j];
				if (y[i* *rxmax+j]>0) {
					x[i* *rxmax+j] = y[i* *rxmax+j];
					y[i* *rxmax+j] = 0;
					}
				else x[i* *rxmax+j] = 0; 
			    }
			
			if ((x[i* *rxmax+j]>0) & (y[i* *rxmax+j]==0) & (j<*rxmax-1))  {	
					x[i* *rxmax+j+1] = x[i* *rxmax+j+1] + x[i* *rxmax+j];
					x[i* *rxmax+j]=0;
				}				
			else if ((x[i* *rxmax+j]>0) & (y[i* *rxmax+j]<0) & (j==*rxmax-1))  {	
				y[i* *rxmax+j] = y[i* *rxmax+j] + x[i* *rxmax+j];
				if (y[i* *rxmax+j]>0) {
					x[i* *rxmax+j] = y[i* *rxmax+j];
					y[i* *rxmax+j] = 0;	}				
				}				
	}

	for (i=0;i<*n;i=i+1) {
		surp[i]=0;
		defic[i]=0;	
		for (j=0;j<*rxmax;j++){
			surp[i]=surp[i]+ x[i* *rxmax + j];
			defic[i]=defic[i]+ y[i* *rxmax + j];
	}
}	
				
}
