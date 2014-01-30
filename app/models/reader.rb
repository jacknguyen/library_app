class Reader
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: String
  field :membership_id, type: Integer
end
