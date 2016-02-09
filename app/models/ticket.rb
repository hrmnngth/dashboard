# == Schema Information
#
# Table name: tickets
#
#  id           :integer          not null, primary key
#  type         :string
#  critical     :integer
#  critical_age :float
#  high         :integer
#  high_age     :float
#  medium       :integer
#  medium_age   :float
#  low          :integer
#  low_age      :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ticket < ActiveRecord::Base
end
