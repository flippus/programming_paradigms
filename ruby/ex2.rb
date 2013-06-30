class Ex2

    def ticket_price(number_of_zones, number_of_age)
        price = 2 + number_of_zones - 1
        price = price/2 if number_of_age <= 12 || number_of_age >= 60
    end
    
    def print_duplicates(file_string)
        file = new File(file_string, "r")
        counter = 1
        while(line = file.gets)
            string_array = line.splits
            for i in 0..string_array.length
                for j in (i+1)..string_array.length
                    puts "#{counter}: #{string_array[i]}" if string_array[j].eql?(string_array[i]
                end
            end
            counter += 1
        end
    end
    
    def compare_arrays_odd(first_array, second_array)
        return false if first_array.count != second_array.count
        first_array.each_with_index do |value, index|
            unless i.odd?
                return false if first_array[i].odd? || second_array[i].odd?    
            else
                return false unless first_array[i].odd? && second_array[i].odd?
            end    
        end
        return true
    end

end
