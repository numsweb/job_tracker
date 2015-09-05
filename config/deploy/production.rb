set :runner, 'jkropka'
#set :admin_runner, 'jkropka' # user that makes the directories during deploy:setup
set :user, "jkropka"
set :remote, "jkropka"

set :keep_releases, 3
set :use_sudo, false


set :ssh_options, { 
 # :port => 40295, 
  :keys => ["#{ENV['HOME']}/.ssh/id_dsa"], 
  :host_key => 'ssh-dss',
  :paranoid => false
}
set :chmod755, "app config db lib public vendor script script/* public/disp*"


#set :domain, 'oneoriginalgeek.com'  # Dreamhost servername where your account is located 
#set :project, 'job_tracker'  # Your application as its called in the repository
#set :application, 'job_tracker.oneoriginalgeek.com'  # Your app's location (domain or sub-domain name as setup in panel)
#set :applicationdir, "/home/jkropka/#{application}"  # The standard Dreamhost setup



# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, 'oneoriginalgeek.com'
role :web, 'oneoriginalgeek.com'
role :db,  'oneoriginalgeek.com'

# deploy config
set :deploy_to, "/home/jkropka/job_tracker.oneoriginalgeek.com"
set :deploy_via, :export

set  :stage, :production


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
#server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options
