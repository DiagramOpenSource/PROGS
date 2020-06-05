#!/usr/bin/env python
# -*- coding: cp1252 -*-
#Juan Hevilla Guerrero 15/03/2012

import sys, os, socket, struct


def getMacLinux(ifname):
	import fcntl
	try:
		s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
		info = fcntl.ioctl(s.fileno(), 0x8927,  struct.pack('256s', ifname[:15]))
		return ''.join(['%02x:' % ord(char) for char in info[18:24]])[:-1]
	except IOError:
		return 

def getMacAddress(): 
	mac = ''
	if sys.platform == 'win32': 
		for line in os.popen("ipconfig /all"): 
			if line.lstrip().startswith('Physical Address'): 
				mac = line.split(':')[1].strip().replace('-',':') 
				break 
			if line.lstrip().startswith('Dirección física'): 
				mac = line.split(':')[1].strip().replace('-',':') 
				break 
	else: 
		mac = getMacLinux("eth0")
		if not mac:
			for line in os.popen("/sbin/ifconfig"): 
				if line.find('ether') > -1: 	#BSD
					mac = line.split()[1] 
					break 
				if line.find('Ethernet') > -1: 	#Debian
					mac = line.split()[4] 
					break 
	return mac      

	
def Main():
	data = getMacAddress()
		
	if len(sys.argv) >= 2:
		try:
			f = open (sys.argv[1], 'w')
			f.write(data)
			f.close
		except IOError:
			pass
	else:	
		print data
			
if __name__=="__main__":
    Main()

	