require 'date'
require 'byebug'

class Application

    def call(env)
        resp = Rack::Response.new

        
        current_time = Time.now.strftime ("%H:%M")
        hour = current_time.split(":")[0].to_i
        min = current_time.split(":")[1].to_i

        if hour > 12
            std_hour = hour.to_i - 12
            indicator = "PM"
        else
            indicator = "AM"
        end
        
        if min < 10
            resp.write "Hello! It is #{std_hour}:0#{min} #{indicator}\n"
        else    
            resp.write "Hello! It is #{std_hour}:#{min} #{indicator}\n"
        end

        if hour.to_i < 12
            resp.write "Good Morning!\n"
        else
            resp.write "Good Afternoon!\n"
        end

        resp.finish
    end

end