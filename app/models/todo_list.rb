class TodoList < ApplicationRecord
  has_many :todo_items
  validates :titel, presence: true
end
