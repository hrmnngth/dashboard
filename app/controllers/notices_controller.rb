# == Schema Information
#
# Table name: notices
#
#  id                 :integer          not null, primary key
#  template_name      :string
#  template_id        :string
#  communication_type :string
#  count              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class NoticesController < ApplicationController
  def show
    @notices = Notice.all #this will load all data from the NOTICE table into the variable accts 

  end
end
