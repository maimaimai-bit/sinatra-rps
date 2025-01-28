require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  @player_move = "rock"
  
  if @computer_move == "rock"
    @outcome = "We tied"
  elsif @computer_move == "paper"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:move)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  @player_move = "paper"
  
  if @computer_move == "paper"
    @outcome = "We tied"
  elsif @computer_move == "scissors"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:move)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @computer_move = moves.sample
  @player_move = "scissors"
  
  if @computer_move == "scissors"
    @outcome = "We tied"
  elsif @computer_move == "rock"
    @outcome = "We lost"
  else
    @outcome = "We won"
  end
  
  erb(:move)
end
