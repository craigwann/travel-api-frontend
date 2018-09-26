class DestinationsController < ApplicationController

  def index
    @dest = TravelCall.new
    @dest_json = @dest.get_destinations
    @rev = TravelCall.new
    @rev_json = @rev.get_reviews
    @user = TravelCall.new
    @user_json = @user.get_users

    # JSON.parse(@dest.get_destinations)["results"]["destinations"].each do |place|
    #   @dest_json.push(place)
    # end
  end

  def show

  end

end
