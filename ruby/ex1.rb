class Ex1

    # task 1
    def get_odd_numbers_of_array
        array_length = Random.rand(11)
        array = []
        int i = 0
        while i < array_length
            array << Random.rand(100)
        end
        array.each_with_index {|x, i| puts x if i.odd?}
    end
    
    # task 2
    def copyodd(array = nil)
        odd_array = array.select_with_index { |x, i| i.odd? }
        return odd_array 
    end
    
    # task 3
    def print_file_content(file_string)
        file = File.new(file_string, "r")
        counter = 1
        while line = file.gets
            puts "#{counter}: #{line}"
            counter += 1
        end
        file.close
    end
   
end

