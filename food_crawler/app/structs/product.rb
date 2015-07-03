class Product < Crabfarm::BaseStruct

  # add some fields, some examples:
  #
  # has_string :a_string
  # has_integer :an_integer_greater_than_8, greated_than: 8
  # has_array :an_array
  # has_field :misc_field
  #

  has_string :price
  has_string :unit_price
  has_string :name
end
