source "http://rubygems.org"

# this section of the Gemfile is patched by the rails patches

# for rails 2.2.2 we'll lock down some older versions just to widen our test
gem "rails", "= 2.2.2"
gem "mongrel", "= 1.1.5"      # to prevent this bug:  http://www.ruby-forum.com/topic/206225
group :test do
  gem "webrat", "= 0.7.0"
  # rails 2.2.2 doesn't require rack, but webrat does
  gem "rack", "= 1.0.1"
end
gem "will_paginate", "= 2.3.12"
sqlite_specs=["sqlite3-ruby", "= 1.2.5", {:require => "sqlite3"}]
mysql_specs=["mysql", "= 2.8.1"]




# this section of the Gemfile is patched by the database patches
gem *sqlite_specs




# Note:  put your working repository here instead of github, and then type "bundle update hobo".   For example
# gem "hobo", :git => "/work/hobo",
gem "hobo", :git => "git://github.com/tablatom/hobo.git",




# this section of the Gemfile is patched by the Hobo patches
:branch => "1-0-stable"




