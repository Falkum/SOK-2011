#Introduksjon

library(ggplot2)
library(gapminder)
view(gapminder)

#Plot of 
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(aes(color = continent)) + scale_x_log10() + geom_smooth() +
  ylab("Forventet levealder") +
  xlab("BNP per innbygger") + 
  ggtitle("Sammenheng mellom BNP og levealder")


# plot of life exp in Norway over time
Norway_gapminder <- gapminder[gapminder$country == "Norway", ]

ggplot(Norway_gapminder, aes(x = gdpPercap+year, y =lifeExp)) +
  geom_line(color = "blue") +
  ylab("Forventet levealder") +
  xlab("BNP i dollar") +
  ggtitle("Sammenheng mellom levealder og BNP i Norge")

