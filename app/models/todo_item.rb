class TodoItem < ApplicationRecord
  belongs_to :todo_list
  validates :titel, presence: true
end
