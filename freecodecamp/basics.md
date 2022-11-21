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


