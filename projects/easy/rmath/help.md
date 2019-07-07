## Docs

You won't need any elixir libraries to solve these

## Implementation


### fibonacci

Here is a c++ solution
```c
int fib(int n, int a = 0, int b = 1) 
{ 
    if (n == 0) 
        return a; 
    if (n == 1) 
        return b; 
    return fib(n - 1, b, a + b); 
} 
```
### factorial


Here is a c++ solution

```c
int factTR(int n, int a) 
{ 
    if (n == 0)  return a; 
  
    return factTR(n-1, n*a); 
} 
```