
require File.expand_path('../android_lexer', __FILE__)
# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

set :haml, { ugly: true }

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Site Settings

# If set, the logo in the navbar will also be a link to this URL
set :navbar_url, 'https://www.moesif.com'

# SEO Settings
set :host, 'https://www.moesif.com' # the base hostname & protocol for your homepage
set :base_path, '/docs/api' # Base/Root Path of Slate (For example if you proxy Slate at www.example.com/docs, then set to /docs)
set :locale, 'en'

# http://json-ld.org/spec/
set :seo, {
  :legal_name => "Moesif, Inc",
  :email => "support@moesif.com",
  :contact_point => { # if contact_point is set, all subfields required
    :email => "support@moesif.com",
    :telephone => "+1-415-851-9835"
  },
  :address => { # if address is set, all subfields required
    :street_address => "77 Van Ness Ave STE 101-1513",
    :address_locality => "San Francisco",
    :address_region => "California",
    :post_office_box_number => 94102
  }
}

# Controls images like Facebook's OG Image'
set :social_image, 'https://www.moesif.com/static/og_image.png'

# No special characters in usernames (i.e. no @)
set :twitter_username, 'MoesifHQ'
set :facebook_username, 'MoesifHQ'
set :facebook_app_id, '232433703771289'
set :github_username, 'Moesif'

# When set, enables Google Analytics tracking script
set :google_analytics_id, 'UA-78525975-1'
set :google_optimize_id, 'GTM-MRVV632'

# Activate the syntax highlighter
activate :syntax
ready do
  require './lib/multilang.rb'
end

activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
#activate :relative_assets
#set :relative_links, true

# Build Configuration
configure :build do
  # If you're having trouble with Middleman hanging, commenting
  # out the following two lines has been known to help
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  activate :asset_hash
  activate :asset_host, :host => '//apidocs.moesif.com'
  # activate :gzip
end

# Deploy Configuration
# If you want Middleman to listen on a different port, you can set that below
set :port, 4567
