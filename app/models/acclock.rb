# == Schema Information
#
# Table name: acclocks
#
#  id                :integer          not null, primary key
#  app_transactions  :string
#  user_login_counts :integer
#  timestamp         :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Acclock < ActiveRecord::Base
end
