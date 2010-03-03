require 'pancake'
require 'active_record'

class Comment < Pancake::Stacks::Short
  inheritable_inner_classes :CommentPost

  add_root(__FILE__, "comment")

  # Hook to use before we mount any applications
  # before_mount_applications do
  # end

  initialize_stack

end

require ::File.join(Pancake.get_root(__FILE__, "comment"), "comment")
