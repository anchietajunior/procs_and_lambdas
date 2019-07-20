# How Procs and Lambdas work

## Closures

- It's a function...
- whose body references a variable...
- is declared in a parent scope.

## Lexical Scoping and Free variable

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
  ..
end
```

The variable msg is a free variable defined in the parent scope and used inside a function scope.


