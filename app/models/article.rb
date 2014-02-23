class Article < ActiveRecord::Base
  validates :titre, presence: true
end
