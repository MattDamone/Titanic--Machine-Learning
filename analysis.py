
import csv as csv
import numpy as np

print("Testing out some python")

# Printout of training data
csv_file_object = csv.reader(open('Data/train.csv', newline=''), quotechar='|')
#for row in csv_file_object:
#	print(', '.join(row))

header = csv_file_object.__next__()
print(header)
train_data=[] 
for row in csv_file_object: 
    train_data.append(row[1:]) 

print(train_data[1])

train_data = np.array(train_data)
print("Added to np array")
print(train_data[1])