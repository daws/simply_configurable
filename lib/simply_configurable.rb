require 'active_support/core_ext/hash'

module SimplyConfigurable

  def self.included(klass)
    klass.extend(ClassMethods)
  end

  def config
    self.class.config
  end

  private

  module ClassMethods

    def config(options = {})
      @config ||= {}.with_indifferent_access

      if options
        @config.merge!(options || {})
      end

      if self.is_a?(Class)
        superclass_config.merge(@config)
      else
        @config
      end
    end

    private

    def superclass_config
      if self.superclass.include?(SimplyConfigurable)
        self.superclass.config
      else
        {}.with_indifferent_access
      end
    end

  end

end
