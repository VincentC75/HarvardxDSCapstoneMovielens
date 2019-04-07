# Quiz Movielens

# Edx and validation dataframes created with CreateSetAndSubmission.R

## Q1

dim(edx)


## Q2
sum(edx$rating == 0)
sum(edx$rating == 3)


## Q3 & Q4
edx %>% summarise(n_users = n_distinct(userId),
                  n_movies = n_distinct(movieId)) 

## Q5
q5 <- edx %>% separate_rows(genres)
q5b <- list(
q5 %>% filter(genres == 'Drama') %>% count() %>% unlist(),
q5 %>% filter(genres == 'Comedy') %>% count() %>% unlist(),
q5 %>% filter(genres == 'Thriller') %>% count() %>% unlist(),
q5 %>% filter(genres == 'Romance') %>% count() %>% unlist())
names(q5b) <- c('drama','comedy','thriller','romance')
q5b


## Q6
q6 <- edx %>% group_by(movieId) %>% summarise(total = n()) %>% arrange(-total) %>% head()
head(edx$title[edx$movieId == 296],1)


## Q7
q7 <- edx %>% group_by(rating) %>% summarise(total = n()) %>% arrange(-total)
q7
