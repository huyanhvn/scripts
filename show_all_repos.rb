require 'octokit'

Octokit.configure do |c|
  c.access_token = "...."
  c.api_endpoint = "https://github.com/api/v3"
  c.connection_options = { :ssl => { :verify => false } }
end

Octokit.auto_paginate = true
repos = Octokit.organization_repositories("MY_ORG")

repos.each do |repo|
  p repo.name
end
