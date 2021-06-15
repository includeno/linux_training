import uuid
def create_file(filepath,name='',suffix='.txt'):
    if(name==''):
        name=str(uuid.uuid1())[:6]
    inputfile=open(filepath+name+suffix,"w",encoding="utf-8")
    inputfile.close()