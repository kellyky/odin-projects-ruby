# Using iteration, write a method #fibs which takes a number and returns an array containing that many numbers from the fibonacci sequence. Using an example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

def fibs(n)
  fib_starter = [0, 1]
  fib_former, fib_this = fib_starter
  fibs = []
  fibs.concat(fib_starter)

  n = n - fib_starter.length

  n.times do 
    new_fib = fib_former + fib_this
    fibs.push(new_fib)
    fib_former = fib_this
    fib_this = new_fib
  end
  fibs
end

print fibs(8)

# Now write another method #fibs_rec which solves the same problem recursively. This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either of these lengths a requirement… just get it done).


