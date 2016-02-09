class DashboardController < ApplicationController
  def show
    @calls = Call.all
    @accts = Acct.all #this will load all data from the ACCT table into the variable accts 
    @notices = Notice.all #this will load all data from the NOTICE table into the variable accts 
    @loginfailures = Loginfailure.all
    @stuckapps = Stuckapp.all
    @tickets = Ticket.all
    @acclocks = Acclock.all
    @noticestats = Noticestat.all
  end
end
