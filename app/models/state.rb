class State < ActiveRecord::Base
  has_many :selections

  def state_playlist
    query = self.name.gsub(" ","%20")
    api_query = JSON.parse(HTTParty.get("http://api.musixmatch.com/ws/1.1/track.search?apikey=#{Rails.application.secrets.musicxmatch_api_key}&q_lyrics=#{query}"))
    songs = api_query["message"]["body"]["track_list"]
    songs.each do |tracks| puts tracks["track"]["track_name"] end
  end

  def insta_state
    query = self.name.gsub(" ","")
    api_query = HTTParty.get("https://api.instagram.com/v1/tags/#{query}/media/recent?client_id=#{Rails.application.secrets.instagram_client_id}")
    pic = api_query["data"].sample
    pic["images"]["standard_resolution"]["url"]
  end

  def state_weather
    state_code = self.state_code
    city = self.capital
    weather = HTTParty.get("http://api.wunderground.com/api/#{Rails.application.secrets.wunderground_api_key}/conditions/q/#{state_code}/#{city}.json")
    binding.pry
    @current_weather = weather["current_observation"]["weather"]
    @current_temp = weather["current_observation"]["temperature_string"]
    @time = weather["current_observation"]["observation_time"]
  end

end

