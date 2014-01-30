class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :publication_year, type: Integer
  field :ISBN, type: String
  field :genre, type: String

  validates :title, uniqueness: true, presence: true
  validates :author, presence: true
  validates :publication_year, presence: true, numericality: true
  validates :genre, presence: true
  validates :ISBN, uniqueness: true, presence: true

end
