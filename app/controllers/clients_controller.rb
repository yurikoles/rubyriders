class ClientsController < ApplicationController
  def index
    Client.all
  end
  @cloverpops = {black:'cloverpop-color.png', white:'cloverpop.png'}
  def create
    client = Client.new(name:'Some Client', short_description: 'Client description', description: 'Full descritption')
  end
end
