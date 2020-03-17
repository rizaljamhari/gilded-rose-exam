require_relative 'item_handler_mapper.rb'

class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      ItemHandlerMapper.new(item).update
    end
  end
end
