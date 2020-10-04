#!/usr/bin/env python -tt
import sys
import re
import string

# First remove all \n's and the comments before and after Notebook[ ] manually

def XMLCell(str):
	parts=re.findall('["B](.+?)"',str)
	t= '<'+parts[0]+'>'+parts[1]+'</'+parts[0]+'>'
	print [str, parts]	
	return t
		
# Calls the above functions with interesting inputs.
def main():
	path=sys.argv[1]
# import file as large text string
	f = open(path, 'rU')
	text = f.read()
	steps=len(re.findall('Cell\[',text))
	print steps
	count=0
	while count<8:
		print count
		print '<-----\n'	
		first= re.findall(r'Cell\[.+?]',text)
		print first
		text=string.replace(text,first[0],XMLCell(first[0]))
		count+=1	
# 	print re.sub(first[0],XMLCell,text)
	print '-------------------------'
# 	print re.sub(first[0],XMLCell(first[0]),text)
# 	print string.replace(text,first[0],XMLCell(first[0]))
	print text
	print '-------------------------'



if __name__ == '__main__':
	main()
