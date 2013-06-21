module ApplicationHelper

  def like_count(photo)
    photo.votes_for
  end

  def like_switch(photo)
    if current_user.voted_for?(photo)
      link_to 'unlike', unlike_photo_path(photo), :method => :post, :remote => true, "data-type" => :json
    else
      link_to 'like', like_photo_path(photo), :method => :post, :remote => true, "data-type" => :json
    end
  end

end
