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

require 'pry'

def num_points_scored(name)
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if attribute == :players
        i = 0
        while i < 5
          if name == data[i][:player_name]
            return data[i][:points]
          else
            i += 1
          end
        end
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if attribute == :players
        i = 0
        while i < 5
          if name == data[i][:player_name]
            return data[i][:shoe]
          else
            i += 1
          end
        end
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |where, team_hash|
    if name == team_hash[:team_name]
      return team_hash[:colors]
    end
  end
end

def team_names()
  empty = []
  game_hash.each do |where, team_hash|
    empty << team_hash[:team_name]
  end
  empty
end

def player_numbers(name)
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if name == data
        team_hash.each do |attribute, data|
          if attribute == :players
            i = 0
            jersey = []
            while i < 5
             
                jersey << data[i][:number]
                i +=1
              
            end
              return jersey
          end
        end
      end
    end
  end
end

def player_stats(name)
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if attribute == :players
        i = 0
        while i < 5
          if name == data[i][:player_name]
            return data[i]
          else
            i += 1
          end
        end
      end
    end
  end
end

def big_shoe_rebounds_nets
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if attribute == :players
        i = 0
        size = 0
        rebounds = 0
        while i < 5
          if data[i][:shoe] > size
            size = data[i][:shoe]
            rebounds = data[i][:rebounds]
            i += 1
          
          else
            i += 1
          end
          
        end
        return rebounds end
    end
  end
end

def big_shoe_rebounds_hornets
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if data == "Charlotte Hornets"
        team_hash.each do |attribute, data|
          if attribute == :players
            i = 0
            size = 0
            rebounds = 0
            while i < 5
              if data[i][:shoe] > size
                size = data[i][:shoe]
                rebounds = data[i][:rebounds]
                i += 1
              else
                i += 1
              end
              
              end
              return rebounds  end
        end
      end
    
    end
  end
end

def big_shoe_rebounds
  if big_shoe_rebounds_nets > big_shoe_rebounds_hornets
    return big_shoe_rebounds_nets
  else
    return big_shoe_rebounds_hornets
  end
end


def most_points_scored
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
    
      if attribute == :players
        i = 0
        points = 0
        name = ""
        while i < 5
          if data[i][:points] > points
            points = data[i][:points]
            name = data[i][:player_name]
            i += 1
          
          
          else
            i += 1
          end
          binding.pry 
        end
        return name  end
    end
  end
end

def winning_team_a
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if data == "Brooklyn Nets"
        team_hash.each do |attribute, data|
          if attribute == :players
            i = 0
            points = 0
            while i < 5
              points += data[i][:points]
              i += 1
            end
         return points end
         end
      end
    end
  end
end

def winning_team_b
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if data == "Charlotte Hornets"
        team_hash.each do |attribute, data|
          if attribute == :players
            i = 0
            points = 0
            while i < 5
              points += data[i][:points]
              i += 1
            end
         return points end
         end
      end
    end
  end
end

def winning_team
  if winning_team_a > winning_team_b
    return "Nets"
  else
    return "Hornets"
  end
end


def player_with_longest_name
  game_hash.each do |where, team_hash|
    team_hash.each do |attribute, data|
      if attribute == :players
        i = 0
        name = ""
        while i < 5
          if data[i][:player_name].length > name.length
            name = data[i][:rebounds]
            i += 1
          
          
          else
            i += 1
          end
          
        end
        return name end
    end
  end
end
binding.pry