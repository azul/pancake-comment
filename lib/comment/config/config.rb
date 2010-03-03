# Enter any global configuration for the stack in this file.

class Comment
  # include middleware for the development stack
  # Labels can be set in the config/environments/<env>.rb file to limit
  # middleware loading.
  # stack(:middleware_name, :labels => [:development, :production]).use(MiddlewareClass)

  class self::Configuration

    default :comment_index_title, 'the list of all comments', 'title showing on root'
    default :commentable_class, 'Blog::BlogEntry', 'class we are commenting on'
    # Add defaults to your stack configuration.
    # This is scoped to this stack, and is inhertied into child stacks
    #
    # Fixed value defaults:
    #   default :var_name, :value, "A description of the variable"
    #
    # Lazy Defaults:
    #   default :var_name, lambda{ configuration_method }, "Some Description"

    # Declare methods on your configuraiton
    # def configuration_method; #stuff; end
  end
end

ActiveRecord::Base.establish_connection(
  YAML.load_file(
    ::File.join(Pancake.get_root(__FILE__), 'database.yml')
  )[Pancake.env]
)
