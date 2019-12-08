# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Question do
  describe '#valid_data' do
    context 'when the valid data is passed' do
      let(:question) { FactoryGirl.create(:question, id: '1') }

      it 'should create a question' do
        expect(question.errors).to be_empty
      end
    end
  end
end
