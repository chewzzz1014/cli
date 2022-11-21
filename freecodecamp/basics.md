## Run shell program
```
bash test.sh
sh test.sh
```

## Shebang
- Use command `which bash` to get the absolute path of nash
- Tell shell program to use the bash interpreter by including shebang at the top of file:

```
#!<path_to_interpreter>

# example
#!/bin/bash
```

```
# running the bash program:
./test.sh
```

## Bash Variable

## Declare Variable
```
VARIABLE_NAME=VALUE

# example
QUESTION1="What's your name?"
```

- There cannot be any spaces around the equal (=) sign. If a variable has any spaces in it, place double quotes around it

## Use Variable

```
$VARIABLE_NAME

# example
echo #QUESTION1
```

## Sytem Variables

```
# print all system variables
printenv

# View all variables in the shell ( -p stands for print)
declare -p

```

## Read Input
```
read VARIABLE_NAME
```

## echo -e
- Recognize \n, \t etc when printing

```
echo -e "hello\n"
```

## Command argument
```
# all arguments
echo $*

# nth argument: 1, 2, 3...
$<number>
```

## Conditionals

```
if [[ CONDITION ]]
then
  STATEMENTS
fi
```

```
if [[ CONDITION ]]
then
  STATEMENTS
else
  STATEMENTS
fi
```

```
if (( CONDITION ))
then
  STATEMENTS
elif [[ CONDITION ]]
then
  STATEMENTS
fi
```

-  There must be spaces on the inside of the brackets ([[ ... ]]) and around the operator (==).


```
 You can compare integers inside the brackets ([[ ... ]]) of your if with:
 -eq (equal)
 -ne (not equal)
 -lt (less than)
 -le (less than or equal)
 -gt (greater than)
 -ge (greater than or equal
 &&
 ||
```


## Iteration

```
# for loop
# The double parenthesis performed the calculation, changing the value of I.  It makes the calculation in place and provides no output
for (( i = 10; i > 0; i-- ))
do
  echo $i
done
```

```
# while loop
while [[ CONDITION ]]
do
  STATEMENTS
done

# example
  while [[ $I -ge 0 ]]
  do 
    echo $I
    (( I-- ))
  done
```

```
until [[ CONDITION ]]
do
  STATEMENTS
done
```

## Pause Command Execution
```
# puase fopr 3 seconds
sleep 3
```

## Comment
1. One line comment

```
# this is a comment
```

2. Multi-line comments

```
: '
  A multiple
  lines
  comments
'
```


## Array

```
ARR=("a" "b" "c")

echo ${ARR[0]}
# print whole array
echo ${ARR[*]}
echo ${ARR[@]}
```


## Function

```
FUNCTION_NAME() {
  STATEMENTS
}

# function call
FUNCTION_NAME
```
