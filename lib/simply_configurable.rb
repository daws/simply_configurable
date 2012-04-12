require 'active_support/hash_with_indifferent_access'

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
      @config ||= HashWithIndifferentAccess.new({})

      if options
        @config.merge!(options || {})
      end

      @config
    end

  end

end
