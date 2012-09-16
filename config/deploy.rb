# set :application, "set your application name here"
# set :repository,  "set your repository location here"

# set :scm, :subversion
# # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# # if you want to clean up old releases on each deploy uncomment this:
# # after "deploy:restart", "deploy:cleanup"

# # if you're still using the script/reaper helper you will need
# # these http://github.com/rails/irs_process_scripts

# # If you are using Passenger mod_rails uncomment this:
# # namespace :deploy do
# #   task :start do ; end
# #   task :stop do ; end
# #   task :restart, :roles => :app, :except => { :no_release => true } do
# #     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
# #   end
# # end



# server "billnemo.com", :web
# server "billnemo.com", :app
# server "ocean.billnemo.com", :db

default_run_options[:pty] = true

# be sure to change these
set :user, 'looneydoodle'
set :domain, 'billnemo.com'
set :application, 'billnemo'
set :gituser, 'arun057'

# the rest should be good
set :repository,  "git@github.com:#{gituser}/#{application}.git"
set :deploy_to, "/home/#{user}/#{domain}"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :symlink_config, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update", "deploy:symlink_config"

  desc "run 'bundle install' to install Bundler's packaged gems for the current deploy"
  task :bundle_install, :roles => :app do
    run "cd #{release_path} && bundle install"
  end
  after "deploy:update_code", "deploy:bundle_install"
end