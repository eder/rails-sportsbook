require 'swagger_helper'

describe 'Sports API' do
  path '/sports' do
    get 'Retrieves all sports' do
      produces 'application/json'
      response '200', 'sports found' do
        schema type: :object, properties: {
          data: {
            type: :array,
            items: {
              properties: {
                id: { type: :integer },
                name: { type: :string },
                slug: { type: :string },
                active: { type: :boolean }
              }
            }
          }
        }

        run_test!
      end
    end
  end
end
