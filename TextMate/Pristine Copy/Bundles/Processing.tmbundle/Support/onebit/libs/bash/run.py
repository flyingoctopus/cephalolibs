import sys
import os
import commands
import subprocess
import pprint
import tempfile

def main(*args):  
	pp = pprint.PrettyPrinter(indent=4)
	proj_dir = args[2].strip()
	scratch_dir = args[3].strip()
	bundle_dir = args[4].strip()
	
	# maybe catch non existence of file?
	pref_file = os.path.expanduser("~/Library/Processing/preferences.txt")
	
	# check if file exists
	if not os.path.isfile(pref_file):
		# if no pref file exists, create the most basic preferences file
		processing_folder = os.path.expanduser("~/Library/Processing")
		if not os.path.exists(processing_folder):
			os.makedirs(processing_folder)
		f = tempfile.NamedTemporaryFile(delete=False)
		f.write("sketchbook.path=%s" % os.path.expanduser("~/Documents/Processing"))
		f.close()
		os.rename(f.name, pref_file)			
	
	os.chdir(bundle_dir+'/onebit/libs/processing-cmd')
	
	if args[1].strip()=="NO":
		cmd = "./processing --sketch='%s' --output='%s' --preferences='%s' --run >> log.onebit" % (proj_dir, scratch_dir, pref_file);
	else:
		cmd = "./processing --sketch='%s' --output='%s' --preferences='%s' --present >> log.onebit" % (proj_dir, scratch_dir, pref_file);
	p = subprocess.Popen([cmd], shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
	p.wait()
	stdout = p.stdout
	stderr = p.stderr
	err = ""
	out = ""
	for line in stdout.readlines():
		if type(line) == list:
			for phrase in line:
				out+=str(phrase)
		else:
			out+=str(line)
	
	for line in stderr.readlines():
		if type(line) == list:
			for phrase in line:
				err+=str(phrase)
		else:
			err+=str(line)
	try:
	    err= err.decode('utf-8')
	except Exception, e:
	    pass
	try:
	    err= err.decode('ascii')
	except Exception, e:
	    pass
	try:
	    out= out.decode('utf-8')
	except Exception, e:
	    pass
	try:
	    out= out.decode('ascii')
	except Exception, e:
	    pass
	
	if "Assertion" in err and "CocoaAppWindow" in err:
	    err = ""
	
	return "%s%s" % (str(err), str(out))
    
if __name__ == "__main__":
    sys.stdout.write(main(*sys.argv))