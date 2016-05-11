#!/usr/bin/env ruby

class Bubble

    def initialize(array)
        @swaps = 0
        @array = array
        @given = array.clone
    end

    def sort()
        tmp = 0
        complete = false
        
        until complete do
            loopSwaps = 0
            @array.each_index do |i|
                loopSwaps = 0
                for i in (0..@array.length - 2).to_a
                    if @array[i] > @array[i+1]
                        swap(i) 
                        loopSwaps += 1
                    end
                end
                if loopSwaps == 0
                    complete = true
                end
                @swaps += loopSwaps
            end
        end

        return @array
    end

    def info()
        return "Given array: #{@given}\nFinal result: #{@array}\nSwaps: #{@swaps}"
    end

    def swap(i)
        tmp = @array[i]
        @array[i] = @array[i+1]
        @array[i+1] = tmp
    end

end


# sequence = [4, 3, 5, 0, 1]
# swaps = 0

# Your Code Here

# puts "Final result: #{result}"
# puts "Swaps: #{swaps}"
