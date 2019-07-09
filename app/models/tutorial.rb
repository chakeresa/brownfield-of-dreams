# frozen_string_literal: true
class Tutorial < ApplicationRecord
  has_many :videos, -> { order(position: :ASC) }
  acts_as_taggable_on :tags, :tag_list
  accepts_nested_attributes_for :videos
  scope :public_tutorials, ->{ where(classroom: false) }


  def self.bookmarked_videos_for_user(user_id)
    joins(:user_videos)
      .includes(:tutorial)
      .where(user_videos: {user_id: user_id})
      .order(:tutorial_id, :position)
  end
end
