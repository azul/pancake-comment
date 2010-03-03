Pancake.logger.info "Loading Production Environment"

# Set the middleware lables to load
Pancake.stack_labels = [:production]

Pancake.handle_errors!(true) # uncomment to have the stack handle any errors that occur

class Comment
  # include middleware for the development stack
  # stack(:middleware_name).use(MiddlewareClass)
end

# Add code to hooks.  Default available hooks:
# :before_build_stack, :before_mount_applications, :after_initialize_application, :after_build_stack

# Comment.before_build_stack do
#   # stuff to do
# end

