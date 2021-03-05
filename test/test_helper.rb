ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
<<<<<<< HEAD
  parallelize(workers: :number_of_processors, with: :threads)
=======
  parallelize(workers: :number_of_processors)
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
