# Write your code here!
def game_hash
  g_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:name => "Alan Anderson", :number => 0, :shoe => 16,:points => 22, :rebounds => 12, :assists  => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
        {:name => "Reggie Evans", :number => 30, :shoe => 14,:points => 12, :rebounds => 12, :assists  => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
        {:name => "Brook Lopez", :number => 11, :shoe => 17,:points => 17, :rebounds => 19, :assists  => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
        {:name => "Mason Plumlee", :number => 1, :shoe => 19,:points => 26, :rebounds => 11, :assists  => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
        {:name => "Jason Terry", :number => 31, :shoe => 15,:points => 19, :rebounds => 2, :assists  => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
        ]
    }, 
    :away => {
      :team_name => "Charlotte Hornets",
<<<<<<< HEAD
      :colors => ["Turquoise", "Purple"],
=======
      :colors => ["Black", "White"],
>>>>>>> 3744e27de5635fd7c02cb39571797bf4702b0c59
      :players => [
        {:name => "Jeff Adrien", :number => 4, :shoe => 18,:points => 10, :rebounds => 1, :assists  => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
        {:name => "Bismack Biyombo", :number => 0, :shoe => 16,:points => 12, :rebounds => 4, :assists  => 7, :steals => 22, :blocks => 15, :slam_dunks => 10},
        {:name => "DeSagna Diop", :number => 2, :shoe => 14,:points => 24, :rebounds => 12, :assists  => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
        {:name => "Ben Gordon", :number => 8, :shoe => 15,:points => 33, :rebounds => 3, :assists  => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
        {:name => "Kemba Walker", :number => 33, :shoe => 15,:points => 6, :rebounds => 12, :assists  => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}
        ]
    }
  }
end

def num_points_scored (player_name)
<<<<<<< HEAD
  score = 0
  game_hash.each do |location, team_data| 
    team_data[:players].each do |player| 
      score = player[:points]  if  player[:name] == player_name 
    end       
  end
  score
end

def shoe_size (player_name)
  shoe = 0
  game_hash.each do |location, team_data| 
    team_data[:players].each do |player| 
      shoe = player[:shoe]  if  player[:name] == player_name 
    end       
  end
  shoe
end

def team_colors (team_name)
  #colors = []
  game_hash.reduce([]) do |colors,(location, team_data)|
    colors =team_data[:colors] if team_data[:team_name] == team_name
    colors
  end
  
end

def team_names
  game_hash.reduce([]) do |names, (location, team_data)|
    names.push(team_data[:team_name])
    names
  end
end

def player_numbers (team_name)
  game_hash.reduce([]) do |numbers, (location, team_data)|
    numbers = team_data[:players].reduce(numbers) do |num_array, player |
      num_array.push(player[:number]) 
      num_array
    end  if team_data[:team_name] == team_name
    numbers
  end
end

def player_stats(player_name)
  game_hash.reduce({}) do |stats, (location, team_data)|
    stats = team_data[:players].reduce(stats) do | stats_hash, player|
      stats_hash = player if player[:name] == player_name
        stats_hash.delete(:name)
        stats_hash
    end
    stats
  end
end

def big_shoe_rebounds
  largest_size = 0
  rebounds = 0
  game_hash.each do | (location, team_data)|
    team_data[:players].each do |player|
      if player[:shoe] > largest_size
        rebounds = player[:rebounds] 
        largest_size = player[:shoe]
      end
    end
  end
  rebounds
end

def most_points_scored
  most_points = 0 
  player_name = ""
  game_hash.each do | (location, team_data)|
    team_data[:players].each do |player|
      if player[:points] > most_points
        player_name = player[:name] 
        most_points = player[:points]
      end
    end
  end
  player_name
end

def winning_team
  winning_name = ""
  winning_score = 0
  game_hash.each do |location, team_data|
    team_score = team_data[:players].reduce(0) do |total_score, player| 
      total_score += player[:points]
    end
    if team_score > winning_score
      winning_name = team_data[:team_name]
      winning_score = team_score
    end
  end  
  winning_name
end

def player_with_longest_name
  long_name_length = 0 
  player_name = ""
  game_hash.each do | (location, team_data)|
    team_data[:players].each do |player|
      if player[:name].length > long_name_length
        player_name = player[:name] 
        long_name_length = player[:name].length
      end
    end
  end
  player_name
end

def long_name_steals_a_ton?
  chosen_player = player_with_longest_name
  stolen_bases =  player_stats(chosen_player)[:steals]

  rival = game_hash.reduce(false) do | rival_exists, (location, team_data)|
    rival_exists = team_data[:players].any? do |player|
      (player[:steals] > stolen_bases) && (player[:name] != chosen_player)
    end
  end
  
  !rival
  
end
=======
  game_hash.reduce do |score, (key, item)| 
      item[:players].reduce do |dude| 
        score = dude[:points]  if  dude[:name] === player_name 
        dude
      end
      score
  end
end
>>>>>>> 3744e27de5635fd7c02cb39571797bf4702b0c59
