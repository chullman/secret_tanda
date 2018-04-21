class HomeController < ApplicationController
  def index

    if user_signed_in?
      @all_activities_done = Activity_Dones.all
      
    end
  end
end
