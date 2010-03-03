class Comment
  get "(/)", :_name => :home do
    v.comment_posts = stack_class::CommentPost.all
    render :root
  end

  get "(/new)", :_name => :new do
    v.comment_post = stack_class::CommentPost.new
    render :new
  end

  post "(/)" do
    comment_post = stack_class::CommentPost.new(params.comment_post)
    comment_post.save
    redirect url(:home)
  end
end
