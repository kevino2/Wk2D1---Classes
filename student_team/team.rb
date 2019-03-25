class Team
attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
  end

  def add_player(players)
   @players.push(players)
  end

  def find_player(players)
   @players.include?(players)
  end

  def result(result)
      if result == "Win"
        return @points += 3
      else
      if result == "Loss"
      return @points
      end
    end

end
