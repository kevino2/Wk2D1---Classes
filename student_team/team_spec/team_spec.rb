require ('minitest/autorun')
require ('minitest/autorun.rb')
require_relative ('../team.rb')


class Team_Test < Minitest::Test
def test_change_coach
  team = Team.new("Partick Utd", ["Messi"], "Craig Brown", "Points")
team.coach = "Jock"
assert_equal("Jock", team.coach)
end

def test_add_player
  team = Team.new("Partick Utd", ["Messi"], "Craig Brown", "Points")
  result = team.add_player("Pele")
  assert_equal(["Messi", "Pele"], result)
end

def test_find_player
  team = Team.new("Partick Utd", ["Messi", "Pele"], "Craig Brown", "Points")
  result = team.find_player("Messi")
  assert_equal(true, result)
end

def test_result__loss
  team = Team.new("Partick Utd", ["Messi", "Pele"], "Craig Brown", 0)
  result = team.result("Loss")
  assert_equal(0, result)
end

def test_result__win
  team = Team.new("Partick Utd", ["Messi", "Pele"], "Craig Brown", 0)
  result = team.result("Win")
  assert_equal(3, result)
end

end
