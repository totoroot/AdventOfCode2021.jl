module Day02

using AdventOfCode2021

# I tried a few different things to explore some functions and their impact on runtime and memory usage

# function day02(input::String = readInput(joinpath(@__DIR__, "..", "data", "day02.txt")))
function day02(input::Array = readlines(joinpath(@__DIR__, "..", "data", "day02.txt")))
    # position = (horizontal position, depth, aim)
    # position = (0, 0, 0)
    hpos, depth, depth_aim, aim = 0, 0, 0, 0
    # for command in split(rstrip(input), '\n')
    for command in input
        # step = parse(Int, command[end])
        step = parse(Int, last(command))
        # direction = first(command)
        direction = command[1]
        # if startswith(command, 'f')
        # if first(command) == 'f'
        if direction == 'f'
            hpos += step
            depth_aim += step*aim
            # position = position .+ (step, step*position[3], 0)
        # elseif startswith(command, 'd')
        # elseif first(command) == 'd'
        elseif direction == 'd'
            depth += step
            aim += step
            # position = position .+ (0, 0, step)
        # elseif startswith(command, 'u')
        # elseif first(command) == 'u'
        elseif direction == 'u'
            depth -= step
            aim -= step
            # position = position .- (0, 0, step)
        end
    end
    # return position[1]*position[2]
    return (hpos*depth, hpos*depth_aim)

end;

# end module
end

# print(Day02.day02())
