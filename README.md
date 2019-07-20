# How Procs and Lambdas work

## Closure (Proc, Lambda)

- It's a function...
- whose body references a variable...
- is declared in a parent scope.

### Lexical Scoping and Free variable

Accessing variable in the parent scope

```
msg = "Foo"

def say
  x = 1
  puts "Message: #{msg}, #{x}"
end
```

Can't access variable defined inside a function scope in a parent scope.

```
msg = "Foo"
puts "PRINT: #{x}"

def say
  x = 1
end
```

The variable msg is a free variable defined in the parent scope and used inside a function scope.


### First-class values

- Can be assigned to variables.
- Can be passed as argument into methods.
- Can be a return value from a method.

Ex: String, Integer and Lambda.

## Proc

```
module_of_two = proc { |x| x % 2 == 0 }

#=> #<Proc:0x00007ffa8186d638@(irb):3> 

module_of_two.call(2) #=> true
module_of_two.call(3) #=> false
```

## Lambda

```
module_of_two = lambda { |x| x % 2 == 0 }

#=> #<Proc:0x00007ffa81099d58@(irb):6 (lambda)>

module_of_two.call(2) #=> true
module_of_two.call(3) #=> false
```