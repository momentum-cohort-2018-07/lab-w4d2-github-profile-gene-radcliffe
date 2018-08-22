class ProfileController < ApplicationController
  include ProfileHelper
  def index
   get_request_profile
  end

 

end
