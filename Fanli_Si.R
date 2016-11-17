ggplot(subset(gapminder,continent != "Oceania"),
       aes(x = year, y = pop, group = country, color = country)) +
  geom_line(lwd = 1, show.legend = FALSE)  + facet_wrap(~ continent) +
  scale_color_manual(values = country_colors) +
  theme_bw() + theme(strip.text = element_text(size = rel(1.1)))
