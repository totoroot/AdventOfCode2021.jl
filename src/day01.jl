module Day01

using AdventOfCode2021
using BenchmarkTools

function increase(array::Vector)
    # First draft that is much easier to comprehend
    # but does not leverage Julia's strengths
    
    # # Initialize count as unsigned integer
    # count::UInt = 0
    # 
    # # Iterate through array and count up whenever the depth/sum increased
    # for i in 1:length(array)-1
    #     if array[i] < array[i+1]
    #        count += 1
    #     end
    # end
    #
    # return count

    # Shorter and hopefully quicker version using comprehension
    return count(element < next for (element, next) ∈ zip(array[1:end-1], array[2:end]))
end;

function day01(input::String = readInput(joinpath(@__DIR__, "..", "data", "day01.txt")))
    # Create array from string with measurements loaded from file
    measurements = parse.(Int, split(input))
    # Sum up depth measurements in rolling windows
    sums = [sum(measurements[i:i+2]) for i in 1:length(measurements)-2]

    return (increase(measurements), increase(sums))
end;

# end module
end
