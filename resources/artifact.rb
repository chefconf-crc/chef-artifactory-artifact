resource_name :artifactory_artifact

property :artifactory_url, String
property :artifactoryonline, String
property :repository, String, required: true
property :repository_path, String, required: true
property :artifactory_username, String
property :artifactory_password, String
property :group, [Integer, String]
property :owner, [Integer, String]
property :mode, [Integer, String]
property :local_path, String

default_action :create

action :create do
  remote_file :local_path do
    source :artifactory_url 
    owner :owner
    group :group
    mode :mode
    action :create
  end
end

action :delete do
end
