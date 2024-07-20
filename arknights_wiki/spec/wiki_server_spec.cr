require "./spec_helper"

describe WikiServer do
  it "test '/' route" do
    res = WikiServer.router "/"
    res.should eq WikiServer.index_handler WikiServer.get_routes
  end
  it "test specific operator route('/12f')" do
    res = WikiServer.router "/12f"
    res.should eq File.read "data/12f.json"
  end
end
