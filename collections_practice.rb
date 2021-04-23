require 'pry'

def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a > b
            -1
        elsif a < b
            1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
            0
        elsif a.length > b.length
            1
        elsif a.length < b.length
            -1
        end
    end
end

def swap_elements(array)
    var = array[1]
    array[1] = array[2]
    array[2] = var
    array
end

def swap_elements_to(array, index, destination_index)
    var = array[index]
    array[index] = array[destination_index]
    array[destination_index] = var
    array
end

def reverse_array(int_array)
    int_array.reverse
end

def kesha_maker(names_array)
    names_array.map do |name|
        person = name.split("")
        person[2] = "$"
        person.join
    end
end

def find_a(strings_array)
    strings_array.select do |string|
        string.start_with?("a")
    end
end

def sum_array(array)
    ints_array = []
    array.map do |element|
        if element.class == Integer
            ints_array.push(element)
        end
    end
    ints_array.sum
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index != 1
            element + "s"
        else
            element
        end
    end
end

