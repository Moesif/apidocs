# Moesif API Documentation Source

This repo houses the source files for the Moesif API Docs
These docs are published at [https://www.moesif.com/docs/api](https://www.moesif.com/docs/api)

If you see an error, you can create a new GitHub issue for us to review.

## Contributing

You can easily contribute by making edits or adding more documentation.
All articles are under:
source/includes

You can make a simple edit directly with the GitHub edit interface.
For more substantial edits, please fork the repo, make your edits, and submit a pull request.


You're going to need:

 - **Linux or OS X** — Windows may work, but is unsupported.
 - **Ruby, version 2.2.5 or newer**
 - **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

### Getting Set Up

1. Fork this repository on Github.
2. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/YOURUSERNAME/apidocs.git`
3. `cd apidocs`
4. Initialize and start apidocs. You can either do this locally, or with Vagrant:

```shell
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with vagrant
vagrant up
```


# Special Thanks
This static generator was based on [Slate](https://github.com/lord/slate) and [Middleman](https://middlemanapp.com/)
