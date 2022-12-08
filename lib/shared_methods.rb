module SharedMethods
  def self.date_from_parts(parts)
    return unless parts && parts.values.compact_blank.any?

    Date.new(parts['(1i)'].to_i,
             parts['(2i)'].to_i,
             parts['(3i)'].to_i)
  end
end
