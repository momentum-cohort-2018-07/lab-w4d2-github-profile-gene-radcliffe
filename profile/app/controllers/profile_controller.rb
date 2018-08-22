class ProfileController < ApplicationController
  include ProfileHelper
  def index

   get_request_profile
   get_request_repos
   
  end

 

end
