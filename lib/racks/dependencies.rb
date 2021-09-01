class Object
  def self.const_missing(c)
    Mutex.new.synchronize do
      return nil if @calling_const_missing

      @calling_const_missing = true
      require Racks.to_underscore(c.to_s)
      klass = Object.const_get(c)
      @calling_const_missing = false
      klass
    end
  end
end
