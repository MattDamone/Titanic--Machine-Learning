#import numpy as np
import csv as csv

print("Testing out some python")

# Printout of training data
csv_file_object = csv.reader(open('Data/train.csv', newline=''), delimiter=',', quotechar='|')
for row in csv_file_object:
	print(', '.join(row))