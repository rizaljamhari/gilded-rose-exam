require "modules/quality_validation.rb"
require_relative "base_item_handler.rb"

class BackstagePassesHandler < BaseItemHandler
  include QualityValidation

  private

  def update_quality
    if item.sell_in > 10
      quality = item.quality + 1
    elsif item.sell_in > 5
      quality = item.quality + 2
    elsif item.sell_in > 0
      quality = item.quality + 3
    else
      quality = 0
    end

    quality = QualityValidation::MAX_QUALITY if !is_at_most_quality(quality)
    item.quality = quality if is_within_quality_range(quality)
  end

  def update_sell_in
    item.sell_in -= 1
  end
end