#Twitter time

#libraries
library(twitteR)
library(ROAuth)
library(httr)
library(base64enc)

#the setup 
api_key = '9ImyaVdi6unHgPIebjEgt3Ivj'
api_secret = 'RvDo2B4VjtVQlUgbLpRYm1DH27NtbjTyJoz19hl0BPBCTaxqUz'
access_token = '802859820403609600-tthRPzByvJSdfqpAmY56vgEomxM7xNC'
access_token_secret = 'vCxQ5uAvOVPN0azzWkK0J9QlowZf9ICZafYMdpM0dUcRp'

download.file(url = 'http://curl.haxx.se/ca/cacert.pem',
              destfile = "cacert.pem")


setup_twitter_oauth('9ImyaVdi6unHgPIebjEgt3Ivj',
                    'RvDo2B4VjtVQlUgbLpRYm1DH27NtbjTyJoz19hl0BPBCTaxqUz',
                    '802859820403609600-tthRPzByvJSdfqpAmY56vgEomxM7xNC',
                    'vCxQ5uAvOVPN0azzWkK0J9QlowZf9ICZafYMdpM0dUcRp')



library(dplyr)

search.string <- '#metoo'
no.of.tweets <- 1500

MTweets <- searchTwitter(search.string, n=no.of.tweets, lang='en')


#now storing it in a dataframe
df <- do.call('rbind', lapply(MTweets, as.data.frame))
View(df)


tweets_may <- searchTwitter("@afrochemist", n=1500)
View(tweets_may)

library(plyr)
feed_may = lapply(tweets_may, function(t) t$getText())

head(feed_may)



