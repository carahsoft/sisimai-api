use Mojolicious::Lite;
use Sisimai;

get '/' => sub () {
    my $self = shift;
    $self->render(text => 'Sisimai API');
};

post '/parse' => sub() {
    my $self = shift;
    my $body = $self->req->body;
    my $result = Sisimai->dump(\$body);
    return $self->render(text => $result, format => 'json');
};

app->start;