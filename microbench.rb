require 'benchmark'

# add requires for bench:


# set run repetitions
RUNS = 65536

# add variables for bench:

a = 0


# add functions for bench:

def func1       # demo function
end

def func2       # demo function
end


first = Benchmark.measure {
    RUNS.times {
        # 1st run

        a += 1
        # a += 2        # reverse test

        # bench functions
        func1
        # func2         # reverse test
    }
}
first = first.real

# reset bench variables:

a = 0


# run garbage collector
GC.start(full_mark: true, immediate_sweep: true)

second = Benchmark.measure {
    RUNS.times {
        # 2nd run

        a += 2
        # a += 1        # reverse test

        # bench functions
        func2
        # func1         # reverse test
    }
}
second = second.real

# print result nanoseconds
# print "1st run: "
# print first / RUNS.to_f * 1.0e9
# puts " ns"
# print "2nd run: "
# print second / RUNS.to_f * 1.0e9
# puts " ns"

# print result microseconds
print "1st run: "
print first / RUNS.to_f * 1.0e6
puts " µs"
print "2nd run: "
print second / RUNS.to_f * 1.0e6
puts " µs"

# print result milliseconds
# print "1st run: "
# print first / RUNS.to_f * 1000.0
# puts " ms"
# print "2nd run: "
# print second / RUNS.to_f * 1000.0
# puts " ms"

# print result seconds
# print "1st run: "
# print first / RUNS.to_f
# puts " s"
# print "2nd run: "
# print second / RUNS.to_f
# puts " s"
