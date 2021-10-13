# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(provided_player_name)
  # will need to iterate/enumerate through player arrays
  # there is a player array in both 'home' and 'away' teams
  found_player_points = 0
  game_hash[:home][:players].select do |player|
    if player[:player_name] == provided_player_name
      found_player_points = player[:points]
    end
  end
  game_hash[:away][:players].select do |player|
    if player[:player_name] == provided_player_name
      found_player_points = player[:points]
    end
  end
  found_player_points
end

def shoe_size(provided_player_name)
  found_player_shoe_size = 0
  game_hash[:home][:players].collect do |player|  
    if player[:player_name] == provided_player_name
      found_player_shoe_size = player[:shoe]
    end
  end
  game_hash[:away][:players].collect do |player| 
    if player[:player_name] == provided_player_name
      found_player_shoe_size = player[:shoe]
    end
  end
  found_player_shoe_size
end

def team_colors(provided_team_name)
  if game_hash[:home][:team_name] == provided_team_name
    game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == provided_team_name
    game_hash[:away][:colors]
  end
end

def team_names # different ways to do it
  # all_team_names = [game_hash[:home][:team_name], game_hash[:away][:team_name]]

  # all_team_names = []
  # all_team_names.push(game_hash[:home][:team_name])
  # all_team_names.push(game_hash[:away][:team_name])

  # all_team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(provided_team_name)
  this_teams_jersey_numbers = []
  if game_hash[:home][:team_name] == provided_team_name
    game_hash[:home][:players].each do |player|
      this_teams_jersey_numbers.push(player[:number])
    end
  elsif game_hash[:away][:team_name] == provided_team_name
    game_hash[:away][:players].each do |player|
      this_teams_jersey_numbers.push(player[:number])
    end
  end
  this_teams_jersey_numbers
end

def player_stats(provided_player_name)
  found_player_hash = {}
  game_hash[:home][:players].each do |player|
    if player[:player_name] == provided_player_name
      found_player_hash = player
    end
  end
  game_hash[:away][:players].each do |player|
    if player[:player_name] == provided_player_name
      found_player_hash = player
    end
  end
  found_player_hash
end

# iterate through all players, both home and away
# check if current iterating player's shoe size is bigger than
  # the 'biggest_shoe_size' variable
# if the player's shoe size is bigger than the b_s_s variable
  # > reset the variable to be the current player's shoe size
# after all player's shoe size has been checked:
  # i want to find the player who had the biggest_shoe_size
    # return their rebounds
def big_shoe_rebounds
  biggest_shoe_size = 0
  player_who_is_current_biggest_shoe_size = {}
  game_hash[:home][:players].each do |player|
    if player[:shoe] > biggest_shoe_size
      biggest_shoe_size = player[:shoe]
      player_who_is_current_biggest_shoe_size = player
    end
  end
  game_hash[:away][:players].each do |player|
    if player[:shoe] > biggest_shoe_size
      biggest_shoe_size = player[:shoe]
      player_who_is_current_biggest_shoe_size = player
    end
  end
  player_who_is_current_biggest_shoe_size[:rebounds]
end