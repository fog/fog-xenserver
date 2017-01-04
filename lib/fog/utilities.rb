class Hash
  def symbolize_keys!
    keys.each do |key|
      if key.respond_to?(:to_sym) && !key.is_a?(0.class)
        self[(key.to_sym rescue key)] = delete(key)
      end
    end
    self
  end
end
