module HelperMethods
#  def logout
#    visit logout_page
#  end

  def admin_logout
    visit admin_logout_page
  end

#  def fb_login_as(user, &block)
#    raise "User hasn't facebook access token!!!" if user.fb_access_token.blank?
#    visit "/sessions/fb_login?test_code=#{user.fb_access_token}"
#    if block_given?
#      yield
#      logout
#    end
#  end

  def login_as(user, &block)
    visit login_page
    within("#login") do
      fill_in 'email', :with => user.email
      fill_in 'password', :with => 'monkey'
      click_link_or_button('submit')
    end
    if block_given?
      yield
      logout
    end
  end

  def admin_login_as(user, &block)
    visit admin_login_page
    within("#admin_new") do
      fill_in 'admin_login', :with => 'monkey'
      fill_in 'admin_password', :with => 'monkey'
      click_link_or_button('admin_submit')
    end
    if block_given?
      yield
      logout
    end
  end

  def create_site_and_user
    #create_site
    @user = Factory(:user, :info_vector_option_ids => [1], :site => @site, :language => @site.languages.find_by_iso_639_1(lang))
  end


end

RSpec.configuration.include HelperMethods, :type => :acceptance