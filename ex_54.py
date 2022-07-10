import sys
from datetime import datetime

#converting start and end times to datetime objects
start_time = sys.argv[1] + " " + sys.argv[2]
start_time = datetime.strptime(start_time, "%Y-%m-%d %H:%M:%S").timestamp()

end_time = sys.argv[3] + " " + sys.argv[4]
end_time = datetime.strptime(end_time, "%Y-%m-%d %H:%M:%S").timestamp()

# print("{}\n{}".format(start_time.timestamp(),end_time.timestamp()))

def inTimeRange(start_time,end_time,file_name):
	"""
	inTimeRange takes in a dataset, and start and end times 
	and returns all requests in the time range in a list
	Input:
		start_time: int
		end_time: int
		file_name: text file name
	Output:
		vdata: list containing all valid requests
	"""
	valid_data = []
	with open(file_name,'r') as data:
		for line in data:
			line = line.split(' ')
			tmp = datetime.strptime(line[3], '[%d/%b/%Y:%H:%M:%S').timestamp()
			if (start_time < tmp) & (tmp < end_time):
				valid_data.append(' '.join(line))
	return valid_data

valid_data = inTimeRange(start_time,end_time,'apache_access')

with open('ex_54_output_4.txt','w') as fp:
	fp.write(''.join(valid_data))
# 	pickle.dump(valid_data,fp)
#converting log times to datetime object
# tmp = datetime.strptime(line[4], "[%d/%b/%Y:%H:%M:%S")