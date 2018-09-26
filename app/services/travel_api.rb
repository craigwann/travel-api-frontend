class TravelCall
  def get_destinations
    response = HTTParty.get('http://localhost:3000/destinations')
    # response = RestClient::Request.execute(
    #   method: :get,
    #   url: 'https://localhost:3000/destinations'
    # )
  end
  def get_reviews
    response = HTTParty.get('http://localhost:3000/reviews')
    # response = RestClient::Request.execute(
    #   method: :get,
    #   url: 'https://localhost:3000/reviews'
    # )
  end
  def get_users
    response = HTTParty.get('http://localhost:3000/users')
    # response = RestClient::Request.execute(
    #   method: :get,
    #   url: 'https://localhost:3000/users'
    # )
  end
end
