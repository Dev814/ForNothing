class GreetingsController < ApplicationController

  def index
    render text: "Hello World from Aliya"
  end

end

# call render in controller avoids creating a view
