class PagesController < ApplicationController

  def index
  end

  def champions
    @import = LeagueAPI.new()
    @champion_list = @import.champions
  end
end
