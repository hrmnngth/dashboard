# == Schema Information
#
# Table name: stuckapps
#
#  id         :integer          not null, primary key
#  missing    :integer
#  inedit     :integer
#  successful :integer
#  admin      :integer
#  noevidence :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stuckapp < ActiveRecord::Base
end
