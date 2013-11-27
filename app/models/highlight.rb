class Highlight < ActiveRecord::Base
  attr_accessible :title, :description, :user_id
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :user
end