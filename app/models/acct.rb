# == Schema Information
#
# Table name: accts
#
#  id                 :integer          not null, primary key
#  user_type          :string
#  creation_date_time :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Acct < ActiveRecord::Base
end
