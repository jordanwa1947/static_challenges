require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/minitest'
require './web_page/controllers/challenge_one'

Capybara.app = ChallengeOne
Capybara.save_path = './tmp/capybara'

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions
end
