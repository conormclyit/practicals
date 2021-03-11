# practical demo
# add to contents into vec1
vec1 <- c("Hockey","Football","Baseball","Curling","Rugby","Hurling","Basketball", "Tennis", "Cricket", "Lacrosse")

# add contents to vec2
#vec2 <- c("Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")

# add contents of vec1 to vec2
vec2 <- c(vec1,"Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")

# convect to factor
vect2_factor <- as.factor(vec2)
vect2_factor

# extract the first, third and sixth element from vec2 and insert into vec3
vec3 <- vec2[c(1,3,6)]
vec3