import os

def read_command_file(filename):
    inputfile = open(filename, "r", encoding="utf-8")
    lines = list(inputfile.readlines())
    result = [line for line in lines if(len(str(line)) > 0 and not str(line).startswith("#"))]
    return result

def execute_command(filename):
    lines = read_command_file(filename)
    for line in lines:
        print("command:", line)
        res = os.system(line)
        print("-------------"*5)

