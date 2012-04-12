require 'spec_helper'

describe SimplyConfigurable do

  before(:each) do
    @foo_class = Class.new do
      include SimplyConfigurable

      config :color => 'red'
      config :style => 'awesome'

      def style
        "my style is #{config[:style]}"
      end

      class << self
        def color
          "my color is #{config['color']}"
        end
      end
    end
  end

  context 'the Foo class' do

    subject { @foo_class }

    it 'should return "my color is red"' do
      subject.color.should == 'my color is red'
    end

    it 'should return all config values when #config is called' do
      subject.config.should == { 'color' => 'red', 'style' => 'awesome' }
    end

    it 'should return color when config is accessed by symbol' do
      subject.config[:color].should == 'red'
    end

    it 'should allow configuration outside class declaration' do
      subject.config :color => 'green'
      subject.config['color'].should == 'green'
    end

  end

  context 'a Foo instance' do

    subject { @foo_class.new }

    it 'should return "my style is awesome"' do
      subject.style.should == 'my style is awesome'
    end

  end

end

