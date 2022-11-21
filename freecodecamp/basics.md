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
for (( i = 10; i > 0; i-- ))
do
  echo $i
done
```
