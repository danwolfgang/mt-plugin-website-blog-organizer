# Website & Blog Organizer

This plugin for Movable Type makes it easy to reorganize the Website and Blog
hierarchy.

Movable Type has always had the ability to have multiple blogs in a single
install. In fact, those blogs could power different domains just by changing
the publishing paths. Movable Type 5 introduced the idea of the "Website,"
creating a hierarchy for Blogs where a Website can be the parent and Blogs the
children. Great for organization!

When upgrading from Movable Type 4 (or older) to 5.x, blogs are grouped by
their Root URL and a Website is created as their parent. When upgrading from
Movable Type 4 (or older) to 6.x, Blogs are "upgraded" to Website status.
Unfortunately, both of these scenarios are typically not the desired end
result. To be blunt: they're both wrong under varying circumstances. This
plugin simply gives administrators the control needed to create the ideal
hierarchy.

A few specific use cases:

* Post-upgrade organization: MT4 upgrades have almost definitely organized
  Websites in a less than ideal fashion.
* Retiring blogs: sometimes a blog is no longer maintained and not even linked
  to the main site anymore, but the content shouldn't be deleted. The retired
  blog can be moved to another ("Retired") Website, where it's out of the view
  of the active Website, uncluttering the list of active Blogs.
* "Promoting" a blog: one specific blog has been growing in popularity and it's
  time to give it a dedicated domain; it can also be promoted to a Website to
  reflect the hierarchy change.

# Prerequisites

* Movable Type 5.x or 6.x

# Installation

To install this plugin follow the instructions found here:

http://tinyurl.com/easy-plugin-install

# Use

Go to System Overview > Tools > Website & Blog Organizer to begin moving things around. Be sure to save when done.

Note that Roles and Permissions are not changed when Websites and Blogs move. Also, when you move Websites and Blogs you'll also likely want to update Publishing Paths and republish.

# License

This plugin is licensed under the same terms as Perl itself.

#Copyright

Copyright 2014, uiNNOVATIONS LLC. All rights reserved.
