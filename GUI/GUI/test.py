import psutil

addrs = psutil.net_if_addrs()

for k, v in addrs.items():
	if v[0].__contains__('172.28.0.1'):
		print(k)
