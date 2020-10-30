module Fibonacci

export ite_fib
export rec_fib
export memo_fib
    

function ite_fib(n, a1, a2)
    b = a1
    c = a2
    an = 0
    for i = 1: n-1
        an = b + c
        b, c = c, an
    end
    if n == 1
        return a1
    elseif n == 2
        return a2
    else return an
    end
end


function rec_fib(n, a1, a2)
    if n == 1
        return a1
    elseif n == 2
        return a2
    else 
        return rec_fib(n-1, a1, a2) + rec_fib(n-2, a1, a2)
    end
end


function memo_fib(n, a1, a2)
    memo = Dict()
    memo[1] = a1
    memo[2] = a2
    
    if !(n in keys(memo))
        memo[n] = memo_fib(n-1, a1, a2) + memo_fib(n-2, a1, a2)
    end
    return memo[n]
end

end