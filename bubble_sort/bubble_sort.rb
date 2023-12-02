# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

def bubble_sort(array)
    array.each {
        array.each_with_index { |num, j|
            if array[j+1] != nil
                if array[j] > array[j+1]
                    aux = array[j]
                    array[j] = array[j+1]
                    array[j+1] = aux
                end
            end
        }     
    }
end

pp bubble_sort([4,3,78,2,0,2])