class Librarian
  include Mongoid::Document
  field :name, type: String
  field :employee_id, type: Integer
end
