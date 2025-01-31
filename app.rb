require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  
  if @computer_move == "rock"
    @outcome = "We tied"
  elsif @computer_move == "paper"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  
  if @computer_move == "paper"
    @outcome = "We tied"
  elsif @computer_move == "scissors"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  
  if @computer_move == "scissors"
    @outcome = "We tied"
  elsif @computer_move == "rock"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:scissors)
end
