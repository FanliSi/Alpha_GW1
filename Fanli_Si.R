Europe <- gapminder %>%
  select(lifeExp, gdpPercap, continent) %>%
  filter(continent == "Europe")

Americas <- gapminder %>%
  select(lifeExp, gdpPercap, continent) %>%
  filter(continent == "Americas")

EurPlot <- ggplot(Europe, aes(x=gdpPercap, y=lifeExp)) + geom_point(color = "blue") + geom_smooth(method = "lm", formula =  y ~ log(x), color = "yellow") + ggtitle("Europe GDP vs. LifeExp")
AmePlot <- ggplot(Americas, aes(x=gdpPercap, y=lifeExp)) + geom_point(color = "red") + geom_smooth(method = "lm", formula = y ~ log(x), color = "yellow") + ggtitle("Americas GDP vs. LifeExp")