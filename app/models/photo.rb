# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  caption        :text
#  comments_count :integer
#  image          :string
#  likes_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
class Photo < ApplicationRecord
  def user
    key = self.owner_id

    matching_set = User.where({ :id => key })

    the_one = matching_set.at(0)

    return the_one
  end
end
