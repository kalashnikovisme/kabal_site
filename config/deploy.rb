lock '3.2.1'

set :application, 'kabal_site'
set :repo_url, 'git@github.com:kalashnikovisme/kabal_site.git'

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end
end
