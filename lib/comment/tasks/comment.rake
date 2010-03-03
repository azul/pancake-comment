namespace :comment do
  namespace :db do
    desc "A simple way to get the blog_entries table created"
    task :bootstrap do
      ActiveRecord::Base.connection.instance_eval do
        create_table :comment_posts, :force => true do |t|
          t.column :author, :string
          t.column :body, :text
          t.column :commentable_id, :integer
        end
      end
      Comment::CommentPost.create :author => "azul",
        :body => "Guess what - now we even have comments on our blog. Major props to hassox"
      Comment::CommentPost.create :author => "azul",
        :body => "Now this is an actual post on a blog entry - let's say the first one.",
        :commentable_id => 1
    end
  end
end

