require_relative "aged_brie_handler.rb"
require_relative "sulfurus_handler.rb"
require_relative "backstage_passes_handler.rb"
require_relative "conjured_handler.rb"
require_relative "default_item_handler.rb"

class ItemHandlerMapper
  attr_accessor :item

  ITEM_HANDLER = {
    "Aged Brie" => AgedBrieHandler,
    "Backstage passes to a TAFKAL80ETC concert" => BackstagePassesHandler,
    "Conjured" => ConjuredHandler,
    "Sulfuras, Hand of Ragnaros" => SulfurusHandler
  }

  def initialize(item)
    @item = item
  end

  def update
    handler.new(item).update_item
  end

  private

  def handler
    return ITEM_HANDLER[item.name] || DefaultItemHandler
  end
end
