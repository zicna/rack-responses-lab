
class Application
    def call(env)
        response = Rack::Response.new
        time_now = Time.now
        
        if time_now.hour > 12
            response.write "Good Afternoon!"
        else
            response.write "Good Morning!"
        end
        response.finish
    end
end