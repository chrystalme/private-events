# require "rails_helper"

# describe User do
#   describe "with 2 or more events" do
#     it "orders them in reverse chronologically" do
#       @user = User.new(name: 'Ahmet')
#       event = @user.created_events.new(title: "first comment", description: "dsad", location: "oljdsa", date: "10-12-2020")
#       expect(@user.id).to eql(event.creator_id)
#     end
#   end
# end

# RSpec.describe Post, :type => :model do
#   context "with 2 or more comments" do
#     it "orders them in reverse chronologically" do
#       post = Post.create!
#       comment1 = post.comments.create!(:body => "first comment")
#       comment2 = post.comments.create!(:body => "second comment")
#       expect(post.reload.comments).to eq([comment2, comment1])
#     end
#   end
# end