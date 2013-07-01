use strict;
use warnings;
use 5.010;

use Plack::Request;
use Plack::Builder;

my $app = sub {
  my $env = shift;
  my $req = Plack::Request->new($env);
  my $res = $req->new_response(200);
  $res->content_type("text/plain");
  $res->body("Hello World");
  return $res->finalize;
};

builder {
  mount "/" => $app;
};
