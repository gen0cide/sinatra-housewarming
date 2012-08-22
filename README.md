# Sinatra Housewarming
## Overview

A skeleton pre-configured to rapid development with the [Sinatra](http://www.sinatrarb.com/) framework.

No databases configured by default. Check the `config/datastores` directory for some possible adapters. You will copy those into `config/initializers` as needed.

Up to date on Bootstrap v2.1 as well.

Things to lookg at:

- `config/thin.yml`
- `config/settings.yml`
- `Gemfile`
- `config/environment.rb`

To start with thin:

	$ thin -C config/thin.yml start

To restart:

	$ thin -C config/thin.yml restart
	
To stop:

	$ thin -C config/thin.yml stop


## Other

If you have any suggestions, I'll appreciate to accept your pull request.

## Shoutouts

- [jwilkins](http://www.github.com/jwilkins) - For being an epic mentor.
                                             - 