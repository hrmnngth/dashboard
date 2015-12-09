class CreationsController < ApplicationController
def show
    @accts = Acct.all #this will load all data from the ACCT table into the variable accts 
  end
end
