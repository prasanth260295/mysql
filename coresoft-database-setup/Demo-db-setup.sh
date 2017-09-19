rm -f nohup.out
rm -f *.log
command="ant demo-schema-setup "
argNumber=0
while [ $# -gt 0 ]; do    # Until you run out of parameters . . .
  suffix="-Darg${argNumber}=$1"
  command="$command ${suffix}"
  argNumber=`expr $argNumber + 1`
  shift       # Check next set of parameters.
done
$command
