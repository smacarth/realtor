class House < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos

  def self.search type, input, min = nil, max = nil
    if ["mls", "state", "zipcode"].include? type #exact match
      @houses = House.where("#{type} = ?", input)
    elsif type == "city" #partial match
      @houses = House.where("#{type} LIKE ?", '%'+input.to_s+'%')
    else ["bedrooms", "bathrooms", "square_feet"].include? type #range
      @houses = House.where("#{type} >= ? AND #{type} <= ?", min, max)
    end
    @houses
  end
end
