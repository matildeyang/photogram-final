# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  caption       :text
#  comment_count :integer
#  comments      :text
#  fans          :text
#  like_count    :integer
#  posted        :date
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  photo_id      :integer
#
class Photo < ApplicationRecord
end
