require 'rails_helper'

RSpec.describe Article, type: :model do
  # describe "#validations" do  # group it
  # let (:article) { build(:article) }
  # it "test that factory is valid" do
    # expect(1).to be_odd #expect 1 = odd, T, but if expect 2 = odd => failed
     #can remove Factorybot cuz of config.include FactoryBot::Syntax::Method
  #   expect(article).to be_valid #mean that if article == true
  # end
  # it 'has an invalid title' do
  #   article.title= ''
  #   expect(article).not_to be_valid
  #   expect(article.errors[:title]).to include("can't be blank") #include is word sensitive, need to make sure =100%
  # end
  describe '.recent' do
    it 'returns articles in the correct order' do
     
    older_article = create(:article, created_at: 1.hour.ago)
        
      recent_article = create(:article) 

      expect(described_class.recent).to eq(
        [older_article, recent_article ]
      )
#check if scope is correct at createdapp colouum not just random that match and we see suuccess
      recent_article.update_column(:created_at, 2.hours.ago)

      expect(described_class.recent).to eq(
        [older_article, recent_article]
      )
     end
  end
end
# end
  
# tesing file
