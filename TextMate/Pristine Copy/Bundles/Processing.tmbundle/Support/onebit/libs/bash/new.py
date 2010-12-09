import sys
import os
import commands
import tempfile

def main(*args):
    location = args[1].rstrip()
    if location[-1:] == "?":
        location = location[:-1]
    sketch_name = args[2]

    folderpath = "%s/%s" % (location, sketch_name)
    pdepath = "%s/%s.pde" % (folderpath, sketch_name)


    #check if pde file exists
    if not os.path.isfile(pdepath):
        if not os.path.exists(folderpath):
            os.makedirs(folderpath)
        f = tempfile.NamedTemporaryFile(delete=False)
        f.write("""void setup(){

}

void draw(){

}""")
        f.close()
        os.rename(f.name, pdepath)
    
    cmd = 'open -b com.macromates.textmate "%s"' % (folderpath)
    output = commands.getoutput(cmd)
    return output

if __name__ == "__main__":
    sys.stdout.write(main(*sys.argv))