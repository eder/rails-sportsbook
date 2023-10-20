require 'swagger_helper'

describe 'Sports API' do

  path '/api/v1/sports' do

    post 'Create a new sport' do
      tags 'Sports'
      consumes 'application/json'
      parameter name: :sport, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          slug: { type: :string },
          active: { type: :boolean }
        },
        required: ['name', 'slug', 'active']
      }

      response '201', 'sport created' do
        let(:sport) { { name: 'Soccer', active: true } }
        run_test!
      end

      response '422', 'invalid parameters' do
        let(:sport) { { name: nil } }
        run_test!
      end
    end

    get 'List all sports' do
      tags 'Sports'
      produces 'application/json'

      response '200', 'sports listed' do
        run_test!
      end
    end
  end

  path '/api/v1/sports/{id}' do

    get 'Retrieve a sport' do
      tags 'Sports'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'sport found' do
        let(:id) { Sport.create(name: 'Soccer', slug: 'soccer', active: true).id }
        run_test!
      end

      response '404', 'sport not found' do
        let(:id) { 123456 }
        run_test!
      end
    end

    put 'Update a sport' do
      tags 'Sports'
      consumes 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :sport, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          slug: { type: :string },
          active: { type: :boolean }
        }
      }

      response '200', 'sport updated' do
        let(:id) { Sport.create(name: 'Soccer', slug: 'soccer', active: true).id }
        let(:sport) { { name: 'American Football' } }
        run_test!
      end

      response '404', 'sport not found' do
        let(:id) { 123456 }
        let(:sport) { { name: 'American Football' } }
        run_test!
      end
    end

    delete 'Remove a sport' do
      tags 'Sports'
      parameter name: :id, in: :path, type: :integer

      response '204', 'sport removed' do
        let(:id) { Sport.create(name: 'Soccer', slug: 'soccer', active: true).id }
        run_test!
      end

      response '404', 'sport not found' do
        let(:id) { 123456 }
        run_test!
      end
    end
  end
end

