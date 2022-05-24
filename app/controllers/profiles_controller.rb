class ProfilesController < ApplicationController

  def myskis
    @myskis = current_user.skis
  end
end
