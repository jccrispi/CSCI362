from fuzzywuzzy import fuzz
from fuzzywuzzy import process

def get_input():
	new_file = raw_input('Type the file name: ')
	return new_file    

def read_file(file_name):
    infile = open (file_name, 'r')
    file_string = infile.read()
    file_string = file_string.split('\n')
    infile.close()
    return file_string

def test(item1,item2):
	return fuzz.ratio(item1,item2)

def main():

        file = read_file(get_input()) 
	print '\n'
	for i in range (len(file)-1):
		word = file[i].split(',')
  		result = test(word[0],word[1])
		print '------------------------'
		print  word[0],'  |  ',word[1]
    		print "The ratio is: ",result
		print '------------------------'

main()	
