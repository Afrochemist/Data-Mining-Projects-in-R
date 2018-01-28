#libraries
library(Rfacebook)


#temporary token(last about 2 hours)
token ="EAACEdEose0cBACxhXcDXWZCifFf5JkArAUNFiYRcJb2ZAaZCB63d6XbeiZBOGZAGHehdGonDZAkz7yrlrhEEmbZASAFWGtKNGDtWvbLducTEMMNA16rGZBTD4qup9IKgpZBaRYuEdG3uNfNluTSMqn9ZCgqZBEZBSZBR9l8i4B5L8d8rpakB1r68DqF8C6BTlPFmEmAW5BEyH2HJvXgZDZD"


#Get info about a user-me
me = getUsers("me", token = token,
              private_info = TRUE)

#looking at the variable
me

friend_network <- getNetwork(token, format ='adj.matrix')


#Get 10 posts of the English premier league
#220832481274508 is the page ID
#obtain it from https://findmyfbid.com/

#get 10 posts
getpage=getPage(220832481274508, token=token, n = 10)
View(getpage)


#search groups containing in Thailand
search = searchGroup("Thailand", token=token)
View(search)


#search pages relating to Thailand
sp=searchPages('Thailand', token=token, n=15)
View(sp)


getpage2=getPage(327186907332680, token = token,n=10)
View(getpage2)








