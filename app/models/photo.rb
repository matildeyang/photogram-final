# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  comments   :text
#  image      :string
#  like_count :integer
#  posted     :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#
class Photo < ApplicationRecord
end
