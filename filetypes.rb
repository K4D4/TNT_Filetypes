<%
# Function to evaluate a polynomial at x.  The polynomial is given
# as a list of coefficients, from the greatest to the least.
def polyval(x, coef)
    sum = 0
    coef = coef.clone           # Don't want to destroy the original
    while true
        sum += coef.shift       # Add and remove the next coef
        break if coef.empty?    # If no more, done entirely.
        sum *= x                # This happens the right number of times.
    end
    return sum
end
%>