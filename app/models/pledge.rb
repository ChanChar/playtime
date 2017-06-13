# == Schema Information
#
# Table name: pledges
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "active_record_csv_generator"

class Pledge < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def self.generate_csv(csv_generator: ActiveRecordCSVGenerator.new(self))
    csv_generator.generate
  end
end
