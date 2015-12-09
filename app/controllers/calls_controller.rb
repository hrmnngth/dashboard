class CallsController < ApplicationController
  def show
    @calls = Call.all
  end
end
