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

end

