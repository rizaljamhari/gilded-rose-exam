# This class is used to handle normal items
# or act as a fallback if no specific handler found

require "modules/quality_validation.rb"
require_relative "base_item_handler.rb"

class DefaultItemHandler < BaseItemHandler
  include QualityValidation

  private

  def update_quality
    # early return if quality is already at min
    return if is_min_quality(item.quality)

    if item.sell_in > 0
      quality = item.quality - 1
    else
      quality = item.quality - 2
    end

    item.quality = quality if is_at_least_quality(quality)
  end

  def update_sell_in
    item.sell_in -= 1
  end
end
