library(tidyverse)
library(palmerpenguins)
library(ggridges)
data("penguins")
colnames(penguins)

p1 <- ggplot(penguins, aes(x = bill_length_mm, y = body_mass_g, color=species)) +
   geom_point() + geom_density_2d() +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "The scatter plot of body mass index vs bill length",
       subtitle = "Bill length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Bill length (mm)",
       y = "Body mass (g)",
       color = "Penguin species")


p2 <- ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  #geom_density_2d() +
  stat_density_2d(aes(fill = ..level..), geom = "polygon") +
  scale_fill_viridis_c() +
  geom_point(aes(color=species)) + 
 scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(title = "The scatter plot of body mass index vs flipper length",
       subtitle = "Flipper length and body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species") 

p3 <- ggplot(data = penguins, aes(x = species, y = bill_length_mm)) +
  geom_boxplot(aes(color = species), width = 0.3, show.legend = TRUE) +
  geom_jitter(aes(color = species), alpha = 0.5, show.legend = FALSE, position = position_jitter(width = 0.2, seed = 0)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(x = "Species",
       y = "Bill length (mm)",
       title="Distribution of bill length by species")


p4 <- ggplot(penguins, aes(x = flipper_length_mm, y = species)) +
  geom_density_ridges(aes(fill = species)) +
  scale_fill_manual(values = c("darkorange","purple","cyan4")) + 
  labs(x = "Flipper length (mm)", title="Distribution of flipper length by species")

library(patchwork)
(p1|p2)/(p3|p4) + plot_annotation(
  title = '',
  caption = 'Copyrights Thiyanga S. Talagala and Priyanga D. Talagala',
  theme = theme(plot.title = element_text(size = 16))
)