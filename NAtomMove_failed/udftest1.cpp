#include<stdio.h>
#include"udfmanager.h"
int main()
{
	int N;
	double L;
	int maxstep;
	double dt;
	double E;
	double time;
	double *x, *y, *z;
	double *vx, *vy, *vz;
	int i,j;
	char lx[256], ly[256], lz[256], lvx[256], lvy[256], lvz[256];
	
	UDFManager uf("ljtest.udf");
	uf.get("N",N);
	uf.get("L",L);
	uf.get("maxstep",maxstep);
	uf.get("dt",dt);
	
	printf("N=%d, L=%lf, maxstep=%d, dt=$lf\n", N, L, maxstep, dt);
	x=new double[N]; y=new double[N]; z=new double[N];
	vx=new double[N]; vy=new double[N]; vz=new double[N];
	
	for(i=1; i<=maxstep; i++){
		E=0.0;
		for(j=0; j<N; j++){
			x[j] = y[j] = z[j] = i*j*dt;
			vx[j] = vy[j] = vz[j] = i*j*dt*0.1;
			E+=0.5*(vx[j]*vx[j] + vy[j]*vy[j] + vz[j]*vz[j]);
		}
		time = i*dt;
		
		uf.newRecord();
		uf.put("time", time);
		uf.put("E", E);
		
		for(j=0; j<N; j++){
			sprintf(lx, "Atoms[%d].r.x", j);
			uf.put(lx, x[j]);
			sprintf(ly, "Atoms[%d].r.y", j);
			uf.put(ly, y[j]);
			sprintf(lz, "Atoms[%d].r.z", j);
			uf.put(lz, z[j]);
			
			sprintf(lvx, "Atoms[%d].v.x", j);
			uf.put(lvx, vx[j]);
			sprintf(lvy, "Atoms[%d].v.y", j);
			uf.put(lvy, vy[j]);
			sprintf(lvz, "Atoms[%d].v.z", j);
			uf.put(lvz, vz[j]);
		}
	}
	printf("Finished.\n");
	return 1;
}
