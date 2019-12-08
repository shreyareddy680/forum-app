# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuestionsController do
  let!(:questions) { FactoryGirl.create(:question) }

  describe '#index' do
    let!(:questions) { FactoryGirl.create_list(:question, 3) }

    context '#index' do
      before do
        get :index
      end

      it 'returns a 200 (Ok)' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe '#show' do
    let!(:questions) { FactoryGirl.create_list(:question, 3) }

    context 'when a valid id is passed' do
      before do
        get :show, params: { id: questions.first.id }
      end

      it 'returns a 200 (Ok)' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
