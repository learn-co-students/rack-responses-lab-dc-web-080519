class Application
    def call(env)
        resp = Rack::Response.new
######### give user msg w/ "Morning" in am 
        time = Time.now
        if time.hour < 12
            resp.write "Good Morning, Sunshine!"
        else
            ######### give user msg w/ "Afternoon" in pm
            resp.write "Good Afternoon!"         
        end
        resp.finish
    end
end