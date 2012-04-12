require 'spec_helper'

describe SimplyConfigurable do

  before(:each) do
    @parent_class = Class.new do
      include SimplyConfigurable

      config :color => 'red'
      config :style => 'awesome'
    end

    @child_class = Class.new(@parent_class) do
      config :style => 'less awesome'
    end
  end

  context 'the parent class' do

    subject { @parent_class }

    it 'should be awesome' do
      subject.config[:style].should == 'awesome'
    end

  end

  context 'the child class' do

    subject { @child_class }

    it 'should be red' do
      subject.config[:color].should == 'red'
    end

    it 'should be less awesome' do
      subject.config[:style].should == 'less awesome'
    end

  end

end

