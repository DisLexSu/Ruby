require 'minitest/autorun'
require 'capybara/minitest'
require_relative '../app/controllers/root_controller.rb'

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
