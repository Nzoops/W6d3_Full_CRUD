class GossipsController < ApplicationController
  def new
    @new_gossip = Gossip.new()
  end

  def create
     @gossip = Gossip.create # avec xxx qui sont les données obtenues à partir du formulaire
  end 

  def update
    @gossip = Gossip.find(params:[:id])
    puts params.require(:gossip).permit(:title, :description).inspect
    #@gossi = Post.update(params:[post])]
    redirect_to gossip_path
  end
  #   if @gossip.save # essaie de sauvegarder en base @gossip
  #     # si ça marche, il redirige vers la page d'index du site
  #   else
  #     # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  #   end
  # end
end
