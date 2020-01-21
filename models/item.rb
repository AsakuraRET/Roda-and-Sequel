class Item < Sequel::Model
  one_to_many :subitems
end