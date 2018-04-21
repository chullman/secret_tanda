class HomeController < ApplicationController
  def index

    if user_signed_in?
      @random_activity = Activity.order("RANDOM()").first

      @new_activity_done = ActivityDone.create(user_id: current_user.id, activity_id: @random_activity.id)
    end

    if !(user_signed_in?)
      redirect_to new_user_session_path
    end

  end

end
