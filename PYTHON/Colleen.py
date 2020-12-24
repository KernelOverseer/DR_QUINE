#This is my first quine in python

def do_print():
    #this is a useless function
    code = '#This is my first quine in python\n\ndef do_print():\n    #this is a useless function\n    code = %r\n    print(code %% (code,))\n    return\n\nif __name__ == "__main__":\n    do_print()'
    print(code % (code,))
    return

if __name__ == "__main__":
    do_print()
