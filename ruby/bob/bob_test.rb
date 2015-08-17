<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
require 'minitest/autorun'
require "minitest/pride"
=======
#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
>>>>>>> initial upload from work
require_relative 'bob'

class BobTest < Minitest::Test
  def bob
    ::Bob.new
  end

  def feedback(text)
    "Bob hears #{text.inspect}, and.."
  end

  def test_stating_something
    remark = 'Tom-ay-to, tom-aaaah-to.'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_shouting
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'WATCH OUT!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_shouting_gibberish
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    remark = ('A'..'Z').to_a.shuffle[0, 10].join
=======
    skip
    remark = ('A'..'Z').to_a.sample(10).join
>>>>>>> initial upload from work
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_asking_a_question
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'Does this cryogenic chamber make me look fat?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

  def test_asking_a_numeric_question
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'You are, what, like 15?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

  def test_asking_gibberish
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
    remark = ('a'..'z').to_a.shuffle[0, 10].join << '?'
=======
    skip
    remark = ('a'..'z').to_a.sample(10).join << '?'
>>>>>>> initial upload from work
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

  def test_talking_forcefully
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = "Let's go make out behind the gym!"
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_using_acronyms_in_regular_speech
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = "It's OK if you don't want to go to the DMV."
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_forceful_questions
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'WHAT THE HELL WERE YOU THINKING?'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_shouting_numbers
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = '1, 2, 3 GO!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_only_numbers
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = '1, 2, 3'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_question_with_only_numbers
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = '4?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

  def test_shouting_with_special_characters
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_shouting_with_no_exclamation_mark
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'I HATE YOU'
    assert_equal 'Whoa, chill out!', bob.hey(remark), feedback(remark)
  end

  def test_statement_containing_question_mark
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'Ending with ? means a question.'
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end

  def test_prattling_on
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = 'Wait! Hang on. Are you going to be OK?'
    assert_equal 'Sure.', bob.hey(remark), feedback(remark)
  end

  def test_silence
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = ''
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end

  def test_prolonged_silence
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = ' ' * rand(1..10)
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end

  def test_alternate_silences
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = "\t" * rand(1..10)
    assert_equal 'Fine. Be that way!', bob.hey(remark), feedback(remark)
  end

  def test_on_multiple_line_questions
<<<<<<< e5aca9db246ccfd8be4301008076a94072864608
=======
    skip
>>>>>>> initial upload from work
    remark = %(
Does this cryogenic chamber make me look fat?
no)
    assert_equal 'Whatever.', bob.hey(remark), feedback(remark)
  end
end
