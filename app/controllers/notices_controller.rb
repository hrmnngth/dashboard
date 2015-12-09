class NoticesController < ApplicationController
  def show
    @notices = Notice.all #this will load all data from the NOTICE table into the variable accts 

  end
end
