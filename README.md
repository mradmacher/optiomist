# optiomist
A simple implementation of an optional value pattern.

Let's be optimistic. The glass will never be half nil.
# Usage

```
require 'optiomist'

result = Optiomist.some('value')
result.some? # => true
result.none? # => false
result.value # => 'value'

result = Optiomist.some(nil)
result.some? # => true
result.value # => nil

result = Optiomist.none
result.none? # => true
result.some? # => false
```

# Running tests
```
./run_tests
```
