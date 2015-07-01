class Board::Post
  include Mongoid::Document
  field :name, type: String
  field :text, type: String
  belongs_to :parent,    class_name: 'Board::Post', inverse_of: :children
  belongs_to :topic,     class_name: 'Board::Post', inverse_of: :descendants
  has_many :children,    class_name: 'Board::Post', inverse_of: :parent
  has_many :descendants, class_name: 'Board::Post', inverse_of: :topic
end
