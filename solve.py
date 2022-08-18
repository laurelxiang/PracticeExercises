#!/usr/bin/env python
import subprocess
import re

# Create subprocess
proc = subprocess.Popen('./chall', stdout=subprocess.PIPE, stdin=subprocess.PIPE)
counter=0
while True:
    # Read question 1 from standard output
    question_1 = proc.stdout.readline().decode("utf-8")

    if not question_1:
        break
    
    print('\nReceived question', counter,':',question_1)
    # Parse out the question and calculate the answer
    match_1=re.match(r"What is (\d+) \+ (\d+)\?", question_1)
    answer_1 = str(int(match_1.group(1)) + int(match_1.group(2)))
    # Send answer + \n to standard input
    print('Sending answer: ', answer_1)
    #proc.stdin.write(bytes(answer_1, 'utf-8'))
    #proc.stdin.write(bytes('\n', 'utf-8'))
    #proc.stdin.flush()
    print(proc.stdout.readline())

# Read an empty line from standard output
print(proc.stdout.readline())
# Read another line from standard output
print(proc.stdout.readline())
