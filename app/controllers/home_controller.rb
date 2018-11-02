class HomeController < ApplicationController
  def showmemytax
    @conmen = Conman.all
  end
end
