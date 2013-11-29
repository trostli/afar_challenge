require 'spec_helper'

describe HighlightsController do

  context "highlights#index" do
    it "should display a page with all highlights" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context "highlights#create" do

    before(:each) do
      sign_in_user
    end

    it "should add a highlight to the database" do
      expect {
        post :create, :highlight => { :title => "i am a title", :description => "i am description" }
      }.to change(Highlight, :count)
    end
  end

  context "highlights#show" do
    it "should display a page with the highlight" do
      my_highlight = Highlight.create(title:"this is a title", description: "this is the description")
      get :show, id: my_highlight.id
      response.status.should eq 200
    end
  end

end