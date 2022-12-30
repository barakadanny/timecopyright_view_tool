# TimecopyrightViewTool

> Welcome to the TimecopyrightViewTool gem! This gem is designed to help you display the current year and a copyright statement in your Ruby on Rails views. It provides a simple and convenient way to keep your views up to date with the current year, as well as to display a copyright notice for your application. With just a few lines of code, you can easily integrate this gem into your application and start using it right away. Whether you're building a new application or updating an existing one, TimecopyrightViewTool is a useful tool to have in your toolkit.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timecopyright_view_tool'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install timecopyright_view_tool

## Usage

```ruby
TimecopyrightViewTool::Renderer.copyright 'yourname', 'All right reserved'
```

For example
inside your `app/controllers/application_controller.rb`

```ruby
class ApplicationController < ActionController::Base

  before_action :set_copyright

  def set_copyright
    @copyright = TimecopyrightViewTool::Renderer.copyright 'MyName', 'All right reserved'
  end
end
```

Note: Edit the `MyName` and `All right reserved` to anything of your choice.

Then inside your layout 
eg. `app/views/layouts/application.html.erb`

```erb
<footer>
  <p><%= @copyright %></p>
</footer>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/barakadanny/timecopyright_view_tool. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/barakadanny/timecopyright_view_tool/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TimecopyrightViewTool project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/barakadanny/timecopyright_view_tool/blob/master/CODE_OF_CONDUCT.md).
