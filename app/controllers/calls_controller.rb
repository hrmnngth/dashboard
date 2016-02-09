# == Schema Information
#
# Table name: calls
#
#  id               :integer          not null, primary key
#  interval         :datetime
#  avg_wait_time    :datetime
#  max_wait_time    :datetime
#  avg_handle_time  :datetime
#  calls_received   :integer
#  calls_answered   :integer
#  return_no_answer :integer
#  abandoned_calls  :integer
#  pct_abandons     :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CallsController < ApplicationController
  def show
    @calls = Call.all
  end
end
