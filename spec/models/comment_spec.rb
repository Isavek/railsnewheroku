
require 'rails_helper'

describe Comment do
    context "when the product has comments" do
        let(:user){ Comment.create(:user) }
        let(:product){ Product.create!(name: "tester bike")}

        before do
            product.comments.create!(body: "the bikes are getting smarter, soon they will take over. You have been warned.")

        it "not valid without a body"
          expect(comment.body).to_not eq ""
        end

    end
end
