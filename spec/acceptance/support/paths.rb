module NavigationHelpers
  def home_page; full_url('/'); end

  def full_url(path)
    URL + path
  end
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance

