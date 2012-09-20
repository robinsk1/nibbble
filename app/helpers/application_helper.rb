module ApplicationHelper

  def like_count(photo)
    photo.votes_for
  end

  def like_switch(photo)
    if current_user.voted_for?(photo)
      link_to 'unlike this photo!', unlike_photo_path(photo), :method => :post
    else
      link_to 'like this photo!', like_photo_path(photo), :method => :post
    end
  end

end
