class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  has_and_belongs_to_many :users

  field :name
  field :weight, type: Integer
  field :calories, type: Integer

end
