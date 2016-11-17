ggplot(gapminder,
       aes(x = year, y = lifeExp, group = continent, color = continent)) +
  geom_point(lwd = 1, show.legend = FALSE)  +  geom_smooth(method="auto") + facet_wrap(~ continent)
  scale_color_manual(values = continent_colors) +
  theme_bw() + theme(strip.text = element_text(size = rel(1.1)))
