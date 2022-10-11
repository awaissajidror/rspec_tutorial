# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('/widgets', type: :request) do

  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Widget.create!(valid_attributes)
      get widgets_url
      expect(response).to(be_successful)
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      widget = Widget.create!(valid_attributes)
      get widget_url(widget)
      expect(response).to(be_successful)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_widget_url
      expect(response).to(be_successful)
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      widget = Widget.create!(valid_attributes)
      get edit_widget_url(widget)
      expect(response).to(be_successful)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Widget' do
        expect do
          post(widgets_url, params: { widget: valid_attributes })
        end.to(change(Widget, :count).by(1))
      end

      it 'redirects to the created widget' do
        post widgets_url, params: { widget: valid_attributes }
        expect(response).to(redirect_to(widget_url(Widget.last)))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Widget' do
        expect do
          post(widgets_url, params: { widget: invalid_attributes })
        end.to(change(Widget, :count).by(0))
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post widgets_url, params: { widget: invalid_attributes }
        expect(response).to(be_successful)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested widget' do
        widget = Widget.create!(valid_attributes)
        patch widget_url(widget), params: { widget: new_attributes }
        widget.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the widget' do
        widget = Widget.create!(valid_attributes)
        patch widget_url(widget), params: { widget: new_attributes }
        widget.reload
        expect(response).to redirect_to(widget_url(widget))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        widget = Widget.create!(valid_attributes)
        patch widget_url(widget), params: { widget: invalid_attributes }
        expect(response).to(be_successful)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested widget' do
      widget = Widget.create!(valid_attributes)
      expect do
        delete(widget_url(widget))
      end.to(change(Widget, :count).by(-1))
    end

    it 'redirects to the widgets list' do
      widget = Widget.create!(valid_attributes)
      delete widget_url(widget)
      expect(response).to(redirect_to(widgets_url))
    end
  end
end
