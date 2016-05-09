require "test_helper"

describe WelcomeController do

  it "shows index" do
    get root_path
    must_respond_with :success
    # or, value(response).must_be :success?
  end

end
