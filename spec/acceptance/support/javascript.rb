# This works with steak 0.3.x and rspec 1.x
# For steak --pre and rspec 2 see this fork: http://gist.github.com/448487 

# Put this code in acceptance_helper.rb or better in a new file spec/acceptance/support/javascript.rb

RSpec.configure do |config|
  config.before(:each) do
    Capybara.current_driver = :envjs if example.metadata[:js]
  end

  config.after(:each) do
    Capybara.use_default_driver if example.metadata[:js]
  end
end