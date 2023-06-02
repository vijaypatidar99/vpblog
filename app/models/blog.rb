class Blog < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
end
