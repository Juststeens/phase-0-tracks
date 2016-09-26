create an array of numbers
define a method to search the array

arr = [42, 89, 23, 1]
arr_2 = [42, 89, 23, 1, 5]

def search_array(to_search, search_value)
    counter = 0

    to_search.each do |search_elem|
       break if search_elem == search_value
       counter += 1
    end

    if counter == to_search.length
        p nil
    else
        p counter
    end
end

search_array(arr, 89)

search_array(arr, 7)

def fib(x)
    fib_array = [0, 1]
    # new_array = []

    until fib_array.length == x
    total_value = fib_array[-1] + fib_array[-2]
    fib_array << total_value
    end
    p fib_array
end


fib(6)

1. make a list of numbers
2. compare the first pair of numbers
3. if the first number is greater than the second swap their order
4. if the first number is less than the second make no change
5. take the greater value of the most recent pair and repeat steps 3 and 4 with the number to the right.
8. repeat steps 1-5 until no more swaps need to be made

list = [56, 31, 12, 5, 62, 2]

def bubble_sort(list)
    swap = true
    while swap
        swap = false
        list.each_with_index do |number, index|
            next_number = list[index + 1]
            break if index == list.length - 1
            if number > list[index + 1]
                list[index] = next_number
                list[index + 1] = number
                swap = true
            end
        end
    p list
    end
end

bubble_sort(list)