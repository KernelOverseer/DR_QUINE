# This is my second Quine in python
FILE = "Grace_kid.py"
CODE = '# This is my second Quine in python\nFILE = "Grace_kid.py"\nCODE = %r\nFT = lambda myfile: myfile.write(CODE %% CODE)\nFT(open(FILE, "w"))\n'
FT = lambda myfile: myfile.write(CODE % CODE)
FT(open(FILE, "w"))
