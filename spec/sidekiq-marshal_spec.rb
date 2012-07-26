require File.dirname(__FILE__) + '/spec_helper'

describe Sidekiq do

  it "should dump" do
    x = {:args => [1, 2, 3, :a, 'b'], 'queue' => :name}
    str = Sidekiq.dump_json(x)
    Sidekiq.load_json(str).should == x
  end

end