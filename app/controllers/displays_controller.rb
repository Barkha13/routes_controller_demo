class DisplaysController < ApplicationController

    def index
        render text: "What do you want me to say?"
    end

    def hello
        render text: "Hello..."
    end

    def sayHello
        render text: "Saying Hello!"
    end

    def sayName
        if params[:name] == "micheal"
            redirect_to "/say/hello"
        else
            render text: "Saying Hello #{params[:name]}"
        end
    end

    def times
        if session[:count]
            session[:count] +=1
        else
            session[:count] = 1
        end
        render text: "You have visited this page #{session[:count]} times."
    end

    def restart
        session[:count] = nil
        render text: "Destroyed the session."
    end
end
