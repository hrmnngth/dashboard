# == Schema Information
#
# Table name: loginfailures
#
#  id           :integer          not null, primary key
#  count        :integer
#  timestamp    :datetime
#  avgtime      :float
#  responsecode :string
#  result       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Loginfailure < ActiveRecord::Base
end
