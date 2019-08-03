# cleaning data in r

library(dplyr)

df <- ...

class()
dim()
names()

str()
glimplse(df)

summary(df)

head()
tail()
# print()


# na ----------------
is.na(df)
any(is.na(df))
# rows with so missing vaules
complete.cases(df)
df[complete.cases(df), ]

na.omit(df)

# outliers --------------
