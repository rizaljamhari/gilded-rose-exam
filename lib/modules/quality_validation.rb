module QualityValidation
  MAX_QUALITY = 50
  MIN_QUALITY = 0

  def is_at_least_quality(quality)
    return quality >= MIN_QUALITY
  end

  def is_at_most_quality(quality)
    return quality <= MAX_QUALITY
  end

  def is_within_quality_range(quality)
    return (is_at_least_quality(quality) and is_at_most_quality(quality))
  end

  def is_min_quality(quality)
    return quality == MIN_QUALITY
  end

  def is_max_quality(quality)
    return quality == MAX_QUALITY
  end
end