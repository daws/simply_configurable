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

      @config
    end

  end

end
