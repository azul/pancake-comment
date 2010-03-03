class Comment
  inheritable_inner_classes :CommentPost

  class CommentPost < ActiveRecord::Base
    # Without this we can't actually make use of sti :(
    self.store_full_sti_class = true

    belongs_to :commentable, :class_name => configuration.commentable_class

    def to_s
      author + ': ' + body
    end
  end
end
