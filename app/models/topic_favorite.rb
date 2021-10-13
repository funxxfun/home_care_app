class TopicFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :patient
  belongs_to :topic
  # belongs_to :topic_comment
end
