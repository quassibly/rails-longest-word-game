class GamesController < ApplicationController
  require 'open-uri'
  require 'json'


  def new
  end

  def score
    @word = params['word']
    @url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    stringpls = open(@url).string
    @json = JSON.parse(stringpls)
  end


end
