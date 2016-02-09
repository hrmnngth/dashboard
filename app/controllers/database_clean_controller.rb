class DatabaseCleanController < ApplicationController
  def delete
 	Stuckapp.delete_all
  end
end
