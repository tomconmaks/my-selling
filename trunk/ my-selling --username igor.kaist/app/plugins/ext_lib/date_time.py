#coding:utf-8
import time




def norm_date(date):
	d='янв фев мар апр май июн июл авг сен окт ноя дек '.split()
	s=date.split('-')
	return '%s-%s-%s'%(str(s[2]),d[int(s[1])-1],str(s[0]))

def date_now():
	t=time.localtime()
	return time.strftime('%Y-%m-%d',t)
def time_now():
	t=time.localtime()
	return time.strftime('%H:%M:%S',t)
	
def all_dates(date1,date2):
		temp=map(int,date1.split('-'))
		date_s1=time.mktime((temp[0],temp[1],temp[2],0,0,0,0,0,0))
		temp=map(int,date2.split('-'))
		date_s2=time.mktime((temp[0],temp[1],temp[2],0,0,0,0,0,0))
		iter=date_s1
		out=[]
		while iter<=date_s2:
			out.append(time.strftime('%Y-%m-%d',time.localtime(iter)))
			iter+=86400
		return out
		
def int2date(tm):
	return norm_date(time.strftime('%Y-%m-%d',time.localtime(tm)))+time.strftime(' %H:%M:%S',time.localtime(tm))
	
def date2int(dt,tm):
	d=map(int,dt.split('-'))
	t=map(int,tm.split(':'))
	return int(time.mktime((d[0],d[1],d[2],t[0],t[1],t[2],0,0,time.daylight)))


	
