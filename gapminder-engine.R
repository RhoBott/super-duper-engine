## gapminder / test

library(gapminder)
library(tidyverse)

data(gapminder)

gapminder %>%
  filter(year < 1992,
         continent == "Asia") %>%
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             color = country)) +
  geom_point() +
  facet_wrap(vars(year))
