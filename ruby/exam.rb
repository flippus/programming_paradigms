class Exam 

    def totaltime(minutes, seconds)
        minutes_sum
        minutes.each do |m|
            minutes_sum += m
        end
        seconds_sum
        seconds.each do |s|
            seconds_sum += s
        end
        
        minutes_sum += seconds_sum / 60
        seconds_sum = seconds_sum % 60
        
        puts "#{minutes_sum}:#{seconds_sum}"
    end

end
