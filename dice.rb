# /dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  "<a href = \"/dice/2/6\">2d6</a> <a href = \"/dice/2/10\">2d10</a> <a href = \"/dice/1/20\">1d20</a> <a href = \"/dice/5/4\">5d4</a>
  
  </bl>
  <h1>Welcome to the home page!</h1>
    <ul>
      <li> <a href = \"/dice/2/6\">2d6</a> </li>
      <li> <a href = \"/dice/2/10\">2d10</a> </li>
      <li> <a href = \"/dice/1/20\">1d20</a> </li>
      <li> <a href = \"/dice/5/4\">5d4</a> </li>
    </ul>"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<a href = \"/dice/2/6\">2d6</a> <a href = \"/dice/2/10\">2d10</a> <a href = \"/dice/1/20\">1d20</a> <a href = \"/dice/5/4\">5d4</a>
  
  </bl>
  <h1>2d6</h1>
   <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<a href = \"/dice/2/6\">2d6</a> <a href = \"/dice/2/10\">2d10</a> <a href = \"/dice/1/20\">1d20</a> <a href = \"/dice/5/4\">5d4</a>
  
  </bl>
  <h1>2d10</h1>
   <p>#{outcome}</p>"
end

get("/dice/1/20") do
  first_die = rand(1..20)
	
  outcome = "You rolled a #{first_die} for a total of #{first_die}."
	
  "<a href = \"/dice/2/6\">2d6</a> <a href = \"/dice/2/10\">2d10</a> <a href = \"/dice/1/20\">1d20</a> <a href = \"/dice/5/4\">5d4</a>
  
  </bl>
  <h1>1d20</h1>
   <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
	
  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}."
	
  "<a href = \"/dice/2/6\">2d6</a> <a href = \"/dice/2/10\">2d10</a> <a href = \"/dice/1/20\">1d20</a> <a href = \"/dice/5/4\">5d4</a>
  
  </bl>
  <h1>5d4</h1>
   <p>#{outcome}</p>"
end
