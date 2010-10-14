class ValidationError < StandardError
end

module NotifyIfInvalid
  def self.included(base)
    base.extend ClassMethods  
  end

  module ClassMethods
    def notify_if_invalid
      after_validation :check_if_invalid
      
      include InstanceMethods
      extend SingletonMethods
    end
  end

  module SingletonMethods
  end

  module InstanceMethods
    def check_if_invalid
      return if self.errors.empty?
      message = "#{self.class.to_s} #{self.errors.full_messages.to_sentence}: #{self.inspect}"
      error = ValidationError.new message
      HoptoadNotifier.notify_or_ignore error
    end
  end
end
ActiveRecord::Base.send(:include, NotifyIfInvalid)
