require 'net/http'
require 'uri'
require 'json'
class WelcomeController < ApplicationController
  
  def index  
  end

  def about_us
  end

  def contact_us
  end

  def weather_forcast
    url = 'http://www.7timer.info/bin/astro.php?lon=113.17&lat=23.09&ac=0&lang=en&unit=metric&output=internal&tzshift=0'
    uri = URI(url)
    @response = Net::HTTP.get(uri)

    respond_to do |format|
      format.html {  }
      format.json { response:@response }
    end
  end
end
