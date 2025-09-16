get '/' do
    protected!
    @copy = $env.default_copy
    erb :index, locals: { copy: @copy }
end

get '/help' do
    @copy = $env.default_copy
    erb :help, locals: { copy: @copy }
end

get '/about' do
    @copy = $env.default_copy
    erb :about, locals: { copy: @copy }
end

get '/robots.txt' do
    content_type 'text/plain'
    <<~ROBOTS
        User-agent: *
        Disallow: /
    ROBOTS
end