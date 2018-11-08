class HomeController < ApplicationController
  def index
    @cryptohash = StartScrap.new.perform
    @crypto_name = params[:crypto_name]
  end
end
