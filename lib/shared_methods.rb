module SharedMethods
  def self.date_from_param_parts(params, key)
    return unless params["#{key}(1i)"] && params["#{key}(2i)"] && params["#{key}(3i)"]
    return if params["#{key}(1i)"].empty? || params["#{key}(2i)"].empty? || params["#{key}(3i)"].empty?

    Date.new(params["#{key}(1i)"].to_i,
             params["#{key}(2i)"].to_i,
             params["#{key}(3i)"].to_i)
  end
end
