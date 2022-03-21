class HomesController < ApplicationController
  def top
    @user = current_user
    @events = Event.all
  end
end
