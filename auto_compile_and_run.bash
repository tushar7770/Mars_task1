#!/bin/bash
#!/bin/bash
cd ~/prog
ls | grep .c
echo "Enter the program name you want to compile and run : "
read prog_name
gcc ${prog_name} -o `basename ${prog_name} .c`
xterm -hold -e ./`basename ${prog_name} .c`
