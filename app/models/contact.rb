class Contact < ApplicationRecord
  validates :title, :mail, :content, presence: true
  validates :content, length:{in: 1..140}
end
