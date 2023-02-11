require 'benchmark'

# set run repetitions
RUNS = 65536

def func1       # demo function
end

def func2       # demo function
end

# bench setup

a = 0

# /bench setup

first = Benchmark.measure {
    RUNS.times {
        # 1st run

        a += 1
        # a += 2        # reverse test

        # bench function
        func1
        # func2         # reverse test

    }   # /1st run
}
first = first.real

# reset bench setup

a = 0

# /reset bench setup

second = Benchmark.measure {
    RUNS.times {
        # 2nd run

        a += 2
        # a += 1        # reverse test

        # bench function
        func2
        # func1         # reverse test

    }   # /2nd run
}
second = second.real

# print result nanoseconds
# print "1st run: "
# print first * 1000.0
# puts " ns"
# print "2nd run: "
# print second * 1000.0
# puts " ns"

# print result microseconds
print "1st run: "
print first
puts " µs"
print "2nd run: "
print second
puts " µs"

# print result milliseconds
# print "1st run: "
# print first / 1000.0
# puts " ms"
# print "2nd run: "
# print second / 1000.0
# puts " ms"

# print result seconds
# print "1st run: "
# print first / 1.0e6
# puts " s"
# print "2nd run: "
# print second / 1.0e6
# puts " s"
