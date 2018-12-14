# The purpose of this exercise is to continue getting used to working with JSON objects and creating Ruby Objects from them.
#
# Here, you are expected to read the provided JSON file and created an array of nested objects. You will have an Item object that has attributes for id, type, name, and ppu. It will have an attribute called batters which will be in turn an array of Batter objects which have the attributes of id and type.
#
# Item will also have an attribute of toppings which will be an array consisting of Topping objects that have the attributes of id and type.
require_relative 'batter'
require_relative 'topping'

class Item
  def initialize(data)
    @id = data["id"]
    @type = data["type"]
    @name = data["name"]
    @ppu = data["ppu"]
    @_batters = data["batters"]["batter"]
    @_toppings = data["topping"]
  end

  def batter
    @batters ||= @_batters.each do |batter_data|
                  Batter.new(batter_data)
                end
  end

  def toppings
    @toppings ||= @_toppings.each do |topping_data|
                  Topping.new(topping_data)
                end
  end
end
