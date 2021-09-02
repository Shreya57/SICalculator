# Simple Interest Calculator
## About
This Shiny app is a simple interest and total amount calculator and is available [here](https://shreya2405.shinyapps.io/myShinyApp/). It uses the following widgets for inputs on the side bar panel:

-   A numeric input for the principal amount
-   A slider input for the rate of interest
-   Another slider input for the time period (in years)
-   A submit button

It has 2 tabs on the main panel:

-   A "Get Started!" tab overviewing the formulae used
-   A "Results" tab for obviously, displaying the results

The formulae used are:

**SI = Prt**  
**A = P + SI = P(1 + rt)**

where,
SI = simple interest  
P = principal amount  
r = rate of interest  
t = time period  
A = total amount

## Example

    P  <-  10000  
    r  <-  9/100  #since r is in percent(%)  
    t  <-  6  
    
    SI  <-  P  *  r  *  t  
    A  <-  P  +  SI  

    paste("Simple interest is", SI)
```
>> [1] "Simple interest is 5400"
```
    paste("Total amount is", A)
```
>> [1] "Total amount is 15400"
```
