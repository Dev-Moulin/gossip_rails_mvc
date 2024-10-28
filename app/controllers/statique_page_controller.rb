class StatiquePageController < ApplicationController
  def team
    puts '$'*60
    puts "je suis la requete qui demande des info au serveur et je m'affiche sur le terminal "
    puts '$'*60
  end

  def contact
  end

  def home
    @gossips = Gossip.all
  end

  def one_gossip 
    @gossips = Gossip.find(params[:id])
  end

  def user_gossip
     @users.find(params[:user])
  end


end
