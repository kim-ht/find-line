#!/usr/bin/python
import sys
import re

def GetMemoryAccess(file_name):
    with open(file_name, 'rb') as f:
        data = f.read()
    line_idx = 1
    max_line = len(data.split('\n'))
    lines = ['this is dummy'] + data.split('\n')
    found_line = []
    while (line_idx <= max_line):
        if ('#' in lines[line_idx]):
            line_idx += 1
            continue
        if (len(re.findall('\(.*\)', lines[line_idx]))):
            found_line.append(line_idx)
        line_idx += 1
    return found_line

def InsertStringtoFrontofLines(file_name, lines_idx, string):
    with open(file_name, 'rb') as f:
        data = f.read()
    lines = data.split('\n')
    max_line = len(data.split('\n'))
    sliced_data = []
    start_line_idx = 0
    for i in lines_idx:
        current_end_line_idx = i - 1
        sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx]))
        start_line_idx = current_end_line_idx
    start_line_idx = current_end_line_idx
    current_end_line_idx = max_line - 1
    sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx]))
    if (0 in lines_idx):
        instrumented = string
    else:
        instrumented = ''
    for part in sliced_data[:-1]:
        instrumented += part + string
    instrumented += sliced_data[-1]
    return instrumented

if (__name__ == '__main__'):
    file_name = sys.argv[1]
    found_lines_idx = GetMemoryAccess(file_name)
    print InsertStringtoFrontofLines(file_name, found_lines_idx, '\n##############################################\n################# inserted ###############\n#########################################\n')
