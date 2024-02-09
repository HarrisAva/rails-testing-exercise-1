require 'rails_helper'
require 'faker'

RSpec.describe Article, type: :model do

  context 'with valid attributes' do
    it 'is valid' do
      article = Article.new(title: "My First Article", content: "Fugiat sint voluptatibus. Nemo sit quae. Architecto hic voluptatem")
      expect(article).to be_valid
    end
  end

  context 'with invalid attributes' do

    it 'is not valid without a title' do
      article = build(:article, title: nil);

      expect(article).not_to be_valid

    end

    it 'is not valid without a content' do
      article = build(:article, content: nil);

      expect(article).not_to be_valid
      
    end

    it 'is not valid if the title length shorter than 5' do
      article = build(:article, title: nil);

      expect(article).not_to be_valid
      
    end

    it 'is not valid if the content length shorter than 50' do
      article = build(:article, content: nil);

      expect(article).not_to be_valid
      
    end
  end
end

