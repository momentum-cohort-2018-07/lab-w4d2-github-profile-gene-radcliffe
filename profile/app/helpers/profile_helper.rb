#     "login": "gene-radcliffe",
#     "id": 19174133,
#     "node_id": "MDQ6VXNlcjE5MTc0MTMz",
#     "avatar_url": "https://avatars1.githubusercontent.com/u/19174133?v=4",
#     "gravatar_id": "",
#     "url": "https://api.github.com/users/gene-radcliffe",
#     "html_url": "https://github.com/gene-radcliffe",
#     "followers_url": "https://api.github.com/users/gene-radcliffe/followers",
#     "following_url": "https://api.github.com/users/gene-radcliffe/following{/other_user}",
#     "gists_url": "https://api.github.com/users/gene-radcliffe/gists{/gist_id}",
#     "starred_url": "https://api.github.com/users/gene-radcliffe/starred{/owner}{/repo}",
#     "subscriptions_url": "https://api.github.com/users/gene-radcliffe/subscriptions",
#     "organizations_url": "https://api.github.com/users/gene-radcliffe/orgs",
#     "repos_url": "https://api.github.com/users/gene-radcliffe/repos",
#     "events_url": "https://api.github.com/users/gene-radcliffe/events{/privacy}",
#     "received_events_url": "https://api.github.com/users/gene-radcliffe/received_events",
#     "type": "User",
#     "site_admin": false,
#     "name": "generadcliffe",
#     "company": null,
#     "blog": "",
#     "location": "Raleigh, NC",
#     "email": null,
#     "hireable": null,
#     "bio": null,
#     "public_repos": 7,
#     "public_gists": 0,
#     "followers": 0,
#     "following": 0,
#     "created_at": "2016-05-03T18:14:44Z",
#     "updated_at": "2018-08-21T20:56:24Z"
module ProfileHelper
    def profile_url
        @profile_data[""]
    end

    def get_request_profile
        options_forHttpGet = { "gene-radcliffe": 'e0ae1ddcfc3f56e4cc8c44e4766411836e80dc42' }
        response  = HTTParty.get('https://api.github.com/users/gene-radcliffe',options) 
        @profile_data = response.parsed_response
        # response = HTTParty.get('https://api.github.com/users/gene-radcliffe/repos',options)
        @repos_data = response
    end

    def getValueFromKey(key)
        @profile_data[key]
    end
end
