#include"IsHot.h"
//tag-2			
int IsHot(struct ssd_info *ssd){
//	struct request *tmp_tail = ssd->request_tail;
//	unsigned int tmp_lsn = tmp_tail->lsn;
//	unsigned int tmp_opt = tmp_tail->operation;
//	int64_t tmp_i=0;
//	int64_t tmp_buttom = ssd->pre_list[PRE_LIST_SIZE-1];
//	int64_t total=0;
//	int64_t reg[3]={0,0,0};
//	double hx=0;
//	for(tmp_i=PRE_LIST_SIZE-1;tmp_i>0;tmp_i--){
//			ssd->pre_list[tmp_i] = ssd->pre_list[tmp_i-1];
//	}
//	ssd->pre_list[0] = tmp_lsn;
//	if(tmp_buttom==0 && tmp_opt==READ){
//		//return ssd;
//	}
//	else{
//		for(tmp_i=0;tmp_i<PRE_LIST_SIZE;tmp_i++){
//			total+=ssd->pre_list[tmp_i];
//		}
//		reg[0]=tmp_lsn;
//		while(reg[0]>>=1){
//			reg[1]++;
//		}
//		reg[0]=total;		
//		while(reg[0]>>=1){
//			reg[2]++;
//		}
//		reg[0] = tmp_lsn*(reg[2]-reg[1]);
//		hx = ((double)reg[0])/(double)total;
//		for(tmp_i=PRE_LIST_SIZE-1;tmp_i>0;tmp_i--){
//				ssd->pre_entropy[tmp_i] = ssd->pre_entropy[tmp_i-1];
//		}
//		ssd->pre_entropy[0] = hx;
//		hx=0;
//		for(tmp_i=0;tmp_i<PRE_LIST_SIZE;tmp_i++){
//			hx+=ssd->pre_entropy[tmp_i];
//		}
//		FILE* hxfile;
//		hxfile=fopen("hx.txt","a+");
//		fprintf(hxfile,"%lf	",hx);
//		fclose(hxfile);
//	}
//	reg[0] = PRE_LIST_SIZE;
//	int eps = 0;
//	while(reg[0]>>=1)	eps++;
//	(double)eps;
//	eps+=PRE_LIST_SIZE*(PRE_LIST_SIZE+2)*0.00001;
//	return hx<eps;
//
	return 0;
}
