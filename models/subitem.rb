class Subitem < Sequel::Model
  many_to_one :items
end