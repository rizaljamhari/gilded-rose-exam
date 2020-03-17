require "modules/quality_validation.rb"
require_relative "base_item_handler.rb"

class ConjuredHandler < BaseItemHandler
  include QualityValidation

  private

  def update_quality
    # early return if quality is already at min
    return if is_min_quality(item.quality)

    quality = item.quality - 2
    item.quality = quality if is_at_least_quality(quality)
  end

  def update_sell_in
    item.sell_in -= 1
  end
end