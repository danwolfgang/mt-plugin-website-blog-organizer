package WebsiteBlogOrganizer::Plugin;

use strict;
use warnings;

# Display the blogs and websites in the system.
sub list {
    my $app     = shift;
    my $q       = $app->can('query') ? $app->query : $app->param;
    my ($param) = @_;
    my $plugin  = $app->component('websiteblogorganizer');

    $param->{saved} = $q->param('saved');

    return $plugin->load_tmpl( 'list.mtml', $param );
}

sub save {
    my $app = shift;
    my $q   = $app->can('query') ? $app->query : $app->param;
    my $saved = '';

    foreach my $field ($q->param) {
        next if $field eq '__mode';

        # If the website/blog ID has no value it's not being changed.
        next if !$q->param($field);

        my $obj = $app->model('blog')->load({
            id    => $field,
        });

        # If this is a website, then we need to move it to blog status in
        # another website.
        if ($obj->class eq 'website') {
            $obj->class('blog');
            $obj->parent_id( $q->param($field) );
        }
        # This is a blog. It can be promoted to website status or moved to
        # another website.
        else {
            # Promote this blog to a website.
            if ($q->param($field) eq 'new') {
                $obj->class('website');
                $obj->parent_id('');
            }
            # This blog is moving to another website.
            else {
                $obj->parent_id( $q->param($field) );
            }
        }

        $obj->save or die $obj->errstr;
        $saved = '&saved=1'; # So we can show a success message
    }
    
    $app->redirect(
        $app->{cfg}->CGIPath . $app->{cfg}->AdminScript
        . "?__mode=websiteblogorganizer_list" . $saved
    );
}

1;
