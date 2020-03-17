class BaseItemHandler
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def update_item
    update_quality
    update_sell_in
  end

  private

  def update_quality
  end

  def update_sell_in
  end
end
