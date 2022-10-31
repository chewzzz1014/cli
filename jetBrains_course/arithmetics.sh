
echo $(( 10+3 )) 	
echo $(( 10-3 )) 
echo $(( 10*3 )) 
echo $(( 10+3 )) 
echo $(( 10+3 )) 


x=10;
echo $(( x+=3 ))
echo $(( x-=3 ))
echo $(( x*=3 ))
echo $(( x/=3 ))
echo $(( x%=3 ))


# bc utility 
# for relational, logical/boolean, math functions, conditional stmts and iterative stmts 
# evaluate to 0 (false) or 1 (true)
echo bc <<< "10 < 1"
echo bc <<< "10 != 11"
echo bc <<< "10 && 11"
echo bc <<< "10 || 11"
echo bc <<< "!5"


# math library
#Arithmetic operation that returns a floating-point number
echo bc -l <<< "(1 + 2)/7 * 2 ^ 2"

#Using sine and cosine functions
echo bc -l <<< "s(1) + c(1)"

#Using logarithmic and exponential functions
echo bc -l <<< "e(1) + l(5)"

#Finding the square root of a number
echo bc -l <<< "sqrt(27)"