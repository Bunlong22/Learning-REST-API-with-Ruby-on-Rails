#test file
require 'rails_helper'

RSpec.describe ArticlesController do

it 'returns articles in the proper order' do
  older_article =
    create(:article, slug: 'test1', created_at: 1.hour.ago)
  recent_article = create(:article, slug: 'test2')
  get '/articles'
  ids = json_data.map { |item| item[:id].to_i }
  expect(ids).to(
    eq([recent_article.id, older_article.id])
  )
end

=begin
# TODO
  To. Bunlong-san
  Check out '/index' routing directed to a controller. Currently, the controller derived from '/index' end point is not found now.
=end

# it 'paginates results' do
#   article1, article2, article3 =
#     create_list(:article, 3) do |item, i|
#       item.slug = "test#{i+1}"
#       item.save
#     end
#   get '/index', params: { page: { number: 2, size: 1 } }
#   expect(json_data.length).to eq(1)
#   expect(json_data.first[:id]).to eq([article2.id])
# end

# it 'contains pagination links in the response' do
#     article1, article2, article3 =
#       create_list(:article, 3) do |item, i|
#         item.slug = "test#{i+1}"
#         item.save
#       end
#     get '/index', params: { page: { number: 2, size: 1 } }
#     expect(json['links'].length).to eq(5)
#     expect(json['links'].keys).to contain_exactly(
#       'first', 'prev', 'next', 'last', 'self'
#     )
#   end

end
