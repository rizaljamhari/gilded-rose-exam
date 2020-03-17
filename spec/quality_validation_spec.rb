require "../lib/modules/quality_validation.rb"

describe QualityValidation do
  include QualityValidation

  describe ("is_at_least_quality: " + QualityValidation::MIN_QUALITY.to_s) do
    it "cannot lower than 0" do
      expect(is_at_least_quality(-100)).to be(false)
    end

    it "higher than or equal to 0" do
      expect(is_at_least_quality(100)).to be(true)
    end

    it "is equal 0" do
      expect(is_at_least_quality(0)).to be(true)
    end
  end

  describe ("is_at_most_quality: " + QualityValidation::MAX_QUALITY.to_s) do
    it "lower than or equal to 50" do
      expect(is_at_most_quality(30)).to be(true)
    end

    it "cannot higher than 50" do
      expect(is_at_most_quality(40000)).to be(false)
    end

    it "is equal 50" do
      expect(is_at_most_quality(50)).to be(true)
    end
  end

  describe ("is_within_quality_range: " + QualityValidation::MIN_QUALITY.to_s +
    " - " + QualityValidation::MAX_QUALITY.to_s) do
    it "cannot lower than 0" do
      expect(is_within_quality_range(-4)).to be(false)
    end

    it "cannot higher than 50" do
      expect(is_within_quality_range(40000)).to be(false)
    end

    it "is in between 0 and 50" do
      expect(is_at_most_quality(30)).to be(true)
    end
  end

  describe ("is_min_quality: " + QualityValidation::MIN_QUALITY.to_s) do
    it "is equal to 0" do
      expect(is_min_quality(0)).to be(true)
    end

    it "is not equal to 0" do
      expect(is_min_quality(40000)).to be(false)
    end
  end

  describe ("is_max_quality: " + QualityValidation::MAX_QUALITY.to_s) do
    it "is equal to 50" do
      expect(is_max_quality(50)).to be(true)
    end

    it "is not equal to 50" do
      expect(is_max_quality(0)).to be(false)
    end
  end
end