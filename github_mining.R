#Data Mining with Github


#libraries needed
library(jsonlite)
library(httr)
library(httpuv)

oauth_endpoints("github")

myapp = oauth_app(appname = "Mining_practice",
                  key = "<insert key>",
                  secret = "<insert secret>")


#Get OAuth credentials
github_token = oauth2.0_token(oauth_endpoints("github"), myapp)

#Use API
gtoken = config(token = github_token)

req = GET("https://api.github.com/users/Afrochemist/repos", gtoken)

#Another user
req = GET("https://api.github.com/users/sxywu/repos", gtoken)

#A friend of mine
req = GET("https://api.github.com/users/SteveChenDC/repos", gtoken)


stop_for_status(req)

json1 = content(req)

#Convert to a data.frame
gitDF = jsonlite::fromJSON(jsonlite::toJSON(json1))
                           
head(gitDF)


#subset data.frame
gitDF[gitdf$full_name == "Afrochemist/Goals-for-2018", "created_at"]




                           