class Hash
  def symbolize_keys!
    keys.each do |key|
      if key.respond_to?(:to_sym) && !key.is_a?(Integer)
        self[key.to_sym] = delete(key)
      end
    end
    self
  end
end
