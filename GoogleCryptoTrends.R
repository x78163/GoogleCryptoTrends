library(gtrendsR)

negSearchTerms1 = c("bitcoin bubble", "bitcoin fraud", "bitcoin stolen", "bitcoin crash", "is bitcoin a bubble")
negSearchTerms2 = c("when will bitcoin crash", "bitcoin bubble burst", "will bitcoin crash", "bitcoin crash", "bitcoin loss")
negSearchTerms3 = c("bitcoin crash coming", "bitcoin bubble about to burst", "sell bitcoin now", "stolen bitcoin wallet", "bitcoin unsafe")

posSearchTerms1 = c("bitcoin breaking", "bitcoin record", "bitcoin rising", "bitcoin increase", "buy bitcoin")
posSearchTerms2 = c("will bitcoin keep rising", "best place to buy bitcoin", "bitcoin recovering", "where to buy bitcoin", "bitcoin record break")
posSearchTerms3 = c("how much is a bitcoin", "bitcoin bounce", "bitcoin rebound", "bitcoin explode", "new bitcoin record")

neutSearchTerms1 = c("bitcoin", "cryptocurrency", "btc","")


negativeSearch1=gtrends(negSearchTerms1,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")
#Sys.sleep(sample(1:10, 1))
negativeSearch2=gtrends(negSearchTerms2,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")
#Sys.sleep(sample(1:10, 1))
negativeSearch3=gtrends(negSearchTerms3,  time = "now 1-H", gprop = c("web", "news",  "images", "froogle", "youtube"),  hl = "en-US")

#Sys.sleep(sample(1:10, 1))
#positiveSearch1=gtrends(posSearchTerms1,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")
#Sys.sleep(sample(1:10, 1))
#positiveSearch2=gtrends(posSearchTerms2,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")
#Sys.sleep(sample(1:10, 1))
positiveSearch3=gtrends(posSearchTerms2,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")

#Sys.sleep(sample(1:10, 1))
neutralSearch1=gtrends(neutSearchTerms1,  time = "now 1-H", gprop = c("web", "news", "images", "froogle", "youtube"),  hl = "en-US")

searchResults <- data.frame(#downloadTime=Sys.time(),
  
  #Negative 1             
  bitcoin_bubble = character(), 
  bitcoin_fraud = character(),
  bitcoin_stolen = character(),
  bitcoin_crash = character(), 
  is_bitcoin_a_bubble = character(),
  #Negative 2                   
  when_will_bitcoin_crash = character(), 
  bitcoin_bubble_burst = character(), 
  will_bitcoin_crash = character(), 
  bitcoin_crash = character(),
  bitcoin_loss = character(),
  #Negative 3                         
  bitcoin_crash_coming = character(), 
  bitcoin_bubble_about_to_burst = character(),
  sell_bitcoin_now = character(), 
  stolen_bitcoin_wallet = character(),
  bitcoin_unsafe  = character(),
  #Positive 1                
  bitcoin_breaking = character(), 
  bitcoin_record = character(), 
  bitcoin_rising = character(), 
  bitcoin_increase = character(), 
  buy_bitcoin = character(),
  #Positive 2                      
  will_bitcoin_keep_rising = character(), 
  best_place_to_buy_bitcoin = character(), 
  bitcoin_recovering = character(), 
  where_to_buy_bitcoin = character(),
  bitcoin_record_break = character(),
  #Positive 3        
  how_much_is_a_bitcoin = character(), 
  bitcoin_bounce = character(), 
  bitcoin_rebound = character(), 
  bitcoin_explode = character(), 
  new_bitcoin_record = character(),
  #neutral
  bitcoin = character(), 
  cryptocurrency = character(), 
  btc = character(),
  
  stringsAsFactors=FALSE) 


tail(negativeSearch1$interest_over_time$date)
tail(negativeSearch2$interest_over_time$date)
tail(negativeSearch3$interest_over_time$date)
tail(positiveSearch1$interest_over_time$date)
tail(positiveSearch2$interest_over_time$date)
tail(positiveSearch3$interest_over_time$date)
tail(neutralSearch1$interest_over_time$date)
neutralSearch1$interest_over_time$date

test = 0
test$date1 = as.data.frame(negativeSearch1$interest_over_time$date)
test$date2 = as.data.frame(negativeSearch2$interest_over_time$date)
test$date3 = as.data.frame(negativeSearch3$interest_over_time$date)
test$date4 = as.data.frame(positiveSearch1$interest_over_time$date)
test$date5 = as.data.frame(positiveSearch2$interest_over_time$date)
test$date6 = as.data.frame(positiveSearch3$interest_over_time$date)
test$date7 = as.data.frame(neutralSearch1$interest_over_time$date)
test =as.data.frame(test)

#Negative 1            

searchResults$bitcoin_bubble = negativeSearch1$interest_over_time$hits
searchResults$bitcoin_fraud = negativeSearch1
searchResults$bitcoin_stolen = negativeSearch1
searchResults$bitcoin_crash = negativeSearch1 
searchResults$is_bitcoin_a_bubble = negativeSearch1

#Negative 2                   

searchResults$when_will_bitcoin_crash = negativeSearch2 
searchResults$bitcoin_bubble_burst = negativeSearch2 
searchResults$will_bitcoin_crash = negativeSearch2 
searchResults$bitcoin_crash = negativeSearch2
searchResults$bitcoin_loss = negativeSearch2

#Negative 3                         

searchResults$bitcoin_crash_coming = negativeSearch3 
searchResults$bitcoin_bubble_about_to_burst = negativeSearch3
searchResults$sell_bitcoin_now = negativeSearch3
searchResults$stolen_bitcoin_wallet = negativeSearch3
searchResults$bitcoin_unsafe  = negativeSearch3

#Positive 1                

searchResults$bitcoin_breaking = positiveSearch1 
searchResults$bitcoin_record = positiveSearch1 
searchResults$bitcoin_rising = positiveSearch1 
searchResults$bitcoin_increase = positiveSearch1 
searchResults$buy_bitcoin = positiveSearch1

#Positive 2                      

searchResults$will_bitcoin_keep_rising = positiveSearch2
searchResults$best_place_to_buy_bitcoin = positiveSearch2 
searchResults$bitcoin_recovering = positiveSearch2
searchResults$where_to_buy_bitcoin = positiveSearch2
searchResults$bitcoin_record_break = positiveSearch2

#Positive 3        

searchResults$how_much_is_a_bitcoin = positiveSearch3
searchResults$bitcoin_bounce = positiveSearch3
searchResults$bitcoin_rebound = positiveSearch3 
searchResults$bitcoin_explode = positiveSearch3 
searchResults$new_bitcoin_record = positiveSearch3

#neutral

searchResults$bitcoin = neutral 
searchResults$cryptocurrency = neutral 
searchResults$btc = neutral


searchResults$downloadTime=Sys.time()








searchResults$neg1 =  as.list(negativeSearch1)


negativeDate1 = negativeSearch$interest_over_time$date
negativeKeyword1 = negativeSearch$interest_over_time$keyword
negativeHits1 = negativeSearch$interest_over_time$hits
negRegion1 = paste("|||" ,as.character(positiveSearch$interest_by_region$location), "===", as.character(positiveSearch$interest_by_region$hits) ,">>>", as.character(positiveSearch$interest_by_region$keyword), "<<<" )



negativeKeyword2 = negativeSearch2$interest_over_time$keyword



negativeHits2 = negativeSearch2$interest_over_time$hits



positiveSearch$related_queries
