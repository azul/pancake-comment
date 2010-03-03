class Comment
  get "(/)", :_name => :home do
    v.comment_posts = stack_class::CommentPost.all
    render :root
  end

  post "(/)" do
    comment_post = stack_class::CommentPost.new(params.comment_post)
    comment_post.save
    redirect url(:home)
  end
end
