require 'rails_helper'

RSpec.describe ResearchesController, type: :controller do
  let(:research) {FactoryGirl.create(:research)}

  describe "GET #index" do
    let(:researches) { FactoryGirl.create_list(:research, 2) }
    before do
      get "index"
    end

    it "lists all researches" do
      expect(assigns(:researches)).to match_array(researches)
    end

    it "renders index view" do
      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    before { get :show, id: research }

    it "assigns request to @request" do
      expect(assigns(:research)).to eq(research)
    end

    it "renderes show view" do
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    sign_in_user

    before {get :new}

    it "assigns new research to @research" do
      expect(assigns(:research)).to be_a_new(Research)
    end

    it "renders new template" do
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    sign_in_user

    context "with valid attributes" do
      it "should save new research" do
       expect  { post :create, research: FactoryGirl.attributes_for(:research) }.to change(Research, :count).by(1)
      end

      it "redirects to show" do
        post :create, research: FactoryGirl.attributes_for(:research)
        expect(response).to redirect_to research_path(assigns(:research))
      end
    end

    context "with invalid attributes" do
      it "doesen't save new research" do
        expect  { post :create, research: FactoryGirl.attributes_for(:invalid_research) }.to_not change(Research, :count)
      end
    end

    it "renders new view" do
      post :create, research: FactoryGirl.attributes_for(:invalid_research)
      expect(response).to render_template :new
    end
  end

  describe "GET #edit" do
    
    sign_in_user

    before { get :edit, id: research}

    it "assigns request to @request" do
      expect(assigns(:research)).to eq(research)
    end

    it "renders edit view" do
      expect(response).to render_template :edit
    end
  end

  describe "PATCH #update" do

    sign_in_user

    context "valid attributes" do
      it "assigns request to @request" do
        patch :update, id: research, research: FactoryGirl.attributes_for(:research)
        expect(assigns(:research)).to eq(research)
      end

      it "changes research attributes" do
        patch :update, id: research, research: {
          title: "another title",
          category: "another category",
          description: "another description",
          author: "another author",
          body: "asdasdasdasdasd"
        }
        research.reload
        expect(research.title).to eq("another title")
        expect(research.category).to eq("another category")
        expect(research.description).to eq("another description")
        expect(research.author).to eq("another author")
        expect(research.body).to eq("asdasdasdasdasd")
      end

      it "redirects to show" do
        patch :update, id: research, research: FactoryGirl.attributes_for(:research)
        expect(response).to redirect_to research
      end
    end

    context "invalid attributes" do

      before do
        patch :update, id: research, research: {
          title: "another title",
          category: "another category",
          description: "another description",
          author: "another author",
          body: ""
        }
      end

      it "doesen't change attributes" do
        research.reload
        expect(research.title).to eq("MyString")
        expect(research.body).to eq("MyText")
      end

      it "rerenders edit view" do
        expect(response).to render_template :edit
      end
    end
  end

  describe "DELETE #destroy" do

    sign_in_user

    before { research }

    it "deletes research" do
      expect { delete :destroy, id: research }.to change(Research, :count).by(-1)
    end

    it "renders index" do
      expect delete :destroy, id: research 
      expect(response).to redirect_to researches_path
    end
  end

end
