def oxford_comma(array)
    if array.length == 1
        array.join("")
    elsif array.length == 2
        array.insert(1, 'and').join(" ")
    elsif array.length == 3 
        array[0] << ","
        array[1] << "," 
        array.insert(2, 'and').join(" ")
    elsif array.length > 3
        array.map do |ele| 
            if ele != array.last
                ele << ","
            end 
        end 
        array.insert(array.length - 1, 'and').join(" ")
    end
end