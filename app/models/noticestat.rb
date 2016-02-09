# == Schema Information
#
# Table name: noticestats
#
#  id                   :integer          not null, primary key
#  notice_template_name :string
#  notice_template_id   :string
#  notices_triggered    :integer
#  esb_pickedup_count   :integer
#  esb_print_count      :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Noticestat < ActiveRecord::Base
end
