<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
require_relative 'robot'

class RobotTest < Minitest::Test
  def test_has_name
    # rubocop:disable Lint/AmbiguousRegexpLiteral
    assert_match /^[A-Z]{2}\d{3}$/, Robot.new.name
    # rubocop:enable Lint/AmbiguousRegexpLiteral
  end

  def test_name_sticks
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'robot_name'

class RobotTest < Minitest::Test
  COMMAND_QUERY = <<-MSG
    Command/Query Separation:
    Query methods should generally not change object state.
  MSG

  NAME_REGEXP = /^[A-Z]{2}\d{3}$/

  def test_has_name
    assert_match NAME_REGEXP, Robot.new.name
  end

  def test_name_sticks
    skip
>>>>>>> initial upload from work
    robot = Robot.new
    robot.name
    assert_equal robot.name, robot.name
  end

  def test_different_robots_have_different_names
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    # rubocop:disable Lint/UselessComparison
    assert Robot.new.name != Robot.new.name
    # rubocop:enable Lint/UselessComparison
  end

  def test_a_robot_name_can_have_duplicate_letters
    srand 30
    assert_equal "FF472", Robot.new.name
  end

  def test_reset_name
=======
    skip
    refute_equal Robot.new.name, Robot.new.name
  end

  def test_reset_name
    skip
>>>>>>> initial upload from work
    robot = Robot.new
    name = robot.name
    robot.reset
    name2 = robot.name
    assert name != name2
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    assert_equal name2, robot.name, "Command/Query Separation: query methods should generally not change object state"
    # rubocop:disable Lint/AmbiguousRegexpLiteral
    assert_match /^[A-Z]{2}\d{3}$/, name2
    # rubocop:enable Lint/AmbiguousRegexpLiteral
=======
    assert_equal name2, robot.name, COMMAND_QUERY
    assert_match NAME_REGEXP, name2
>>>>>>> initial upload from work
  end
end
