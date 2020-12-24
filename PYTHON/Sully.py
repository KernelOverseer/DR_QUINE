import os

code = 'import os\n\ncode = %r\n\ndef main():\n    i = %d\n    if i <= 0:\n        return\n    if os.path.exists("Sully_%%d.py" %% (i,)):\n        i -= 1\n    with open("Sully_%%d.py" %% (i,), "w") as myfile:\n        myfile.write(code %% (code, i))\n        myfile.close()\n    os.system("python3 Sully_%%d.py" %% (i,))\n\nif __name__ == \'__main__\':\n    main()\n'

def main():
    i = 5
    if i <= 0:
        return
    if os.path.exists("Sully_%d.py" % (i,)):
        i -= 1
    with open("Sully_%d.py" % (i,), "w") as myfile:
        myfile.write(code % (code, i))
        myfile.close()
    os.system("python3 Sully_%d.py" % (i,))

if __name__ == '__main__':
    main()
