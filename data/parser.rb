require 'json'
require 'pry'
require_relative 'item'
class Parser

  def self.start
    items = File.read('./data/cronut.json')
    items_json = JSON.parse(items)["items"]["item"]
    items_json.each do |item_data|
      item = Item.new(item_data)
      item.batter
      item.toppings
    end
  end
end
