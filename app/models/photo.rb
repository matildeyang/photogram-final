# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  caption       :text
#  comment_count :integer
#  image         :string
#  like_count    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  owner_id      :integer
#
class Photo < ApplicationRecord
end
