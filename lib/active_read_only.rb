require "active_read_only/version"

module ActiveRecord
  class Base
 
    def readonly?
      if ENV["AR_READ_ONLY"] == 'true'
        true
      else
        @readonly
      end
    end
 
    def before_destroy
      raise ActiveRecord::ReadOnlyRecord if readonly?
    end
    
  end
end
