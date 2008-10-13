require File.dirname(__FILE__) + '/helper'

context "Sinatra" do

  setup do
    Sinatra.application = nil
  end

  specify "handles multiple paths for get" do
    get ['/:name','/user/:name'] do
      'Hello ' + params["name"]
    end

    get_it '/Blake'

    should.be.ok
    body.should.equal 'Hello Blake'

    get_it '/user/Blake'

    should.be.ok
    body.should.equal 'Hello Blake'
  end

end
