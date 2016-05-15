#!/usr/bin/env ruby

class Bubble

    def initialize(array)
        @swaps = 0
        @array = array
        @given = array.clone
    end

    def sort()
        complete = false
        
        until complete do
            swap_c = 0
            for i in (0..@array.length - 2)
                if @array[i] > @array[i+1]
                    swap(i)
                    swap_c += 1
                end
            end
            complete = swap_c.eql?(0)
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
        @swaps += 1
    end

end

