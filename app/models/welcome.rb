class Welcome


  def self.vine(search)
    random = rand(20).to_i
    @response = HTTParty.get("https://community-vineapp.p.mashape.com/timelines/tags/#{search}",
      headers:{
        "X-Mashape-Key" => "3ZTEQSj47hmshLld5Yz1YbKD3SH1p1kgoxLjsnwcFjdSsDPmPF",
        "Accept" => "application/json"
      }).parsed_response["data"]["records"][random]["videoDashUrl"]

  end


end
