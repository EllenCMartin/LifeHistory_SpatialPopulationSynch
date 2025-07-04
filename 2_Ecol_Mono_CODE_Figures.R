### MARTIN ET AL. 2025
## Life history traits influence environmental impacts on spatial population synchrony in European birds and butterflies
## Ecological Monologues
## Code supplement: Figures
## Date modified: 29-01-2025

### Figure 1: Made in powerpoint. #### 

### Figure 2: Life history trait distribution ####
## Load required packages:
library(ggplot2)

## Load data: 
load("Figure_2_data.csv")



## Panel A: Birds, Log generation time
ggplot(dat, aes(x = LogGenTime, fill = Taxa)) + 
  geom_histogram(alpha = 0.8, lwd = 1, color = "black", binwidth = 0.20, position = "stack") + 
  xlim(range(dat$LogGenTime)) + 
  scale_fill_manual(values = c("#117733")) +
  labs(y = "Number of Species", x = "Log Generation Time", tag = "A.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 24, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 20, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 20, family = "serif", color = "black"),
    axis.title.x = element_text(size = 24, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")




## Panel B: Butterflies, Voltinism
# Prepare the ordering of the axis and the levels:
dat$Voltinism <- factor(dat$Voltinism, levels = c("M", "B", "U"))
my_x_labels <- setNames(c("Uni", "Bi", "Multi"),
                        c("U", "B", "M"))
ggplot(subset(dat, !is.na(Voltinism)), aes(x = Voltinism, fill = Taxa)) + 
  geom_bar(alpha = 0.8, lwd = 1, color = "black", position = "stack") + 
  scale_fill_manual(values = c("#882255")) +
  scale_x_discrete(labels = my_x_labels) +
  labs(y = "Number of Species", x = "Voltinism", tag = "B.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 24, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 20, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 20, family = "serif", color = "black"),
    axis.title.x = element_text(size = 24, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")




## Panel C: Birds, Migratory tactic  
## Prepare the factor data for plotting:
dat$MobilityBird <- factor(dat$MobilityBird, levels = c("Resident", "Short", "Long"))
ggplot(subset(dat, !is.na(MobilityBird)), aes(x = MobilityBird, fill = Taxa)) + 
  geom_bar(alpha = 0.8, lwd = 1, color = "black", position = "stack") + 
  scale_fill_manual(values = c("#117733")) +
  scale_x_discrete(labels = my_x_labels) +
  labs(y = "Number of Species", x = "Migratory Tactic", tag = "C.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 24, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 20, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 20, family = "serif", color = "black"),
    axis.title.x = element_text(size = 24, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")



## Panel D: Butterflies, Migratory tactic
## Prepare the factor data for plotting:
dat$MobilityInsects  <- factor(dat$MobilityInsects , levels = c("Non-migrant", "Migrant"))
ggplot(subset(dat, !is.na(MobilityInsects)), aes(x = MobilityInsects , fill = Taxa)) + 
  geom_bar(alpha = 0.8, lwd = 1, color = "black", position = "stack") + 
  scale_fill_manual(values = c("#882255")) +
  scale_x_discrete(labels = my_x_labels) +
  labs(y = "Number of Species", x = "Migratory Tactic", tag = "D.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 24, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 20, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 20, family = "serif", color = "black"),
    axis.title.x = element_text(size = 24, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")



## Panel E: Birds, Dietary diversity
ggplot(subset(dat, !is.na(BirdDiet)), aes(x = BirdDiet, fill = Taxa)) + 
  geom_bar(alpha = 0.8, lwd = 1, color = "black", position = "stack") + 
  scale_fill_manual(values = c("#117733")) +
  labs(y = "Number of Species", x = "Dietary Diversity", tag = "E.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 24, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 20, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 20, family = "serif", color = "black"),
    axis.title.x = element_text(size = 24, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")



## Panel F: Butterflies, larval diet breadth
## Prepare the factor data for plotting:
dat$Larvaldiet <- factor(dat$LarvalDiet, levels = c("M", "NO", "O", "P"))
my_x_labels <- setNames(c("Mono", "Narrowly-Oligo", "Oligo", "Poly"),
                        c("M", "NO", "O", "P"))
ggplot(subset(dat, !is.na(Larvaldiet)), aes(x = Larvaldiet, fill = Taxa)) + 
  geom_bar(alpha = 0.8, lwd = 1, color = "black", position = "stack") + 
  scale_fill_manual(values = c("#882255")) +
  scale_x_discrete(labels = my_x_labels) +
  labs(y = "Number of Species", x = "Larval Diet Breadth (phagous)", tag = "F.") +
  theme_bw() +
  theme(
    axis.title.y = element_text(size = 16, angle = 90, family = "serif", color = "black"),
    axis.text.y = element_text(size = 14, angle = 90, hjust = 0.5, family = "serif", color = "black"),
    axis.text.x = element_text(size = 14, family = "serif", color = "black"),
    axis.title.x = element_text(size = 16, family = "serif", color = "black"),
    panel.border = element_rect(colour = "black", fill = NA, size = 1),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(colour = "black", size = 0.05),
    axis.ticks.length = unit(-0.25, "cm"), 
    axis.ticks.y = element_line(size = 0.05, color = "black"),
    plot.tag = element_text(face = "bold", size = 24, family = "serif"),
    legend.position = "none")




### Figure 3: Synchrony distribution ####
## Load required packages:
library(ggplot2)
library(ggridges)

## Load data: 
load("Figure_3_data.csv")

level_order = c("UK", "Switzerland", "Sweden", "Norway", "Netherlands", "Ireland", "France", "Finland" )

## Panel A: Synchrony by country.
ggplot(dat, aes(y=factor(Country, level=level_order), colour=Taxa)) +
  geom_density_ridges(scale=1, 
                      aes(x = Synchrony, fill = paste(Taxa)), 
                      alpha = .75, color = "white", jittered_points=FALSE) +
  scale_fill_manual(values = c("#117733", "#882255"), labels = c("Birds", "Insects"), name="") +
  theme_bw() +
  theme(text=element_text(size=16,  family="serif"), axis.text.x = element_text(size = 16, color="black"), axis.text.y = element_text(size = 18, color="black")) +
  theme(legend.title = element_blank())+
  coord_cartesian(clip = "off") +
  ylab("") +
  xlab("ρ population growth rate") 


## Panel B:
mu = c(0.305, 0.089)
ggplot(dat, aes(y = Taxa, colour = Taxa)) +
  geom_density_ridges(
    aes(x = Synchrony, fill = Taxa),
    alpha = 0.75, color = "white", jittered_points = FALSE,
    rel_min_height = 0.01) +
    scale_fill_manual(
    values = c("#117733", "#882255"),
    labels = c("Birds", "Insects"),
    name = "") +
    theme_bw() +
    theme(
    text = element_text(size = 14, family = "serif"),
    axis.text.x = element_text(size = 14, color = "black"),
    axis.text.y = element_text(size = 18, color = "black"),
    legend.title = element_blank()) +
    coord_cartesian(ylim = c(1.4, 2.5), clip = "off") +  # Reduce space under Birds
    ylab("") +
    xlab("ρ population growth rate") +
    geom_vline(xintercept = mu, size = 1, colour = c("#882255", "#117733"), alpha = 0.73, linetype = "dotted") + 
    geom_vline(xintercept = 0, size = 1, colour = "black", alpha = 0.73, linetype = "solid")


### Figure 4: Synchrony x Life history results ####
## Load required packages:
library(ggplot2)
library(ggridges)



## Panel A: Birds, Generation time x Temperature
load("Figure_4A_Data.csv")
group.colors <- c("#1B9E77",  "black", "grey70")
ggplot(df_PANELA, aes(x, predicted, colour=group)) + 
  geom_line(size=1) +
  # ylim(-0.01, 0.5) +
  geom_ribbon(aes(ymin = conf.low, ymax = conf.high, fill=group), alpha = 0.3) +
  scale_fill_manual(values=group.colors, name="fill")+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(colour = "black", size=0.5)) +
  xlab("Synchrony temperature") +
  theme_bw() +
  theme(text = element_text(family = "serif", size=12)) +
  labs(color='Slow Fast') +
  scale_fill_manual(values=group.colors,name = "Generation \nTime", labels=c("Short (0.77)", "Medium (1.24)","Long (1.72)")) + 
  scale_color_manual(values=group.colors, name = "Generation \nTime", labels=c("Short (0.77)", "Medium (1.24)","Long (1.72)")) + 
  ylab("Synchrony population growth rate") +
  theme(legend.position = "none")



## Panel B: Birds, Dietary diversity x Temperature
load("Figure_4B_Data.csv")
group.colors <- c("grey70", "grey30", "#117733")
ggplot(df_PANELB, aes(x, predicted, colour=group)) + 
  geom_line(size=1) +
  coord_cartesian(ylim=c(-0.2, 0.6), xlim=c(0.84, 1)) +
  geom_ribbon(aes(ymin = conf.low, ymax = conf.high, fill=group), alpha = 0.3) +
  scale_fill_manual(values=group.colors, name="fill")+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(colour = "black", size=0.5)) +
  xlab("Synchrony temperature") +
  theme_bw() +
  theme(text = element_text(family = "serif", size=14)) +
  labs(color='Dietary Diversity') +
  scale_fill_manual(values=group.colors,name = "Dietary \nDiversity", labels=c("Low", "Medium", "High")) + 
  scale_color_manual(values=group.colors, name = "Dietary \nDiversity", labels=c("Low", "Medium", "High")) + 
  ylab("Synchrony growth rate") +
  guides(fill=guide_legend(nrow=1)) +
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16)) +
  theme(legend.position = c(0.17, 0.84)) +
  guides(fill=guide_legend(nrow=3)) +
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16))


## Panel C: Birds, Migration tactic x Temperature
load("Figure_4C_Data.csv")
group.colors <- c(group.colors <-c("#882255", "grey50", "goldenrod"))
ggplot(df_PANELC, aes(x, predicted, colour=group)) + 
  geom_line(size=1) +
  coord_cartesian(ylim=c(-0.2, 0.6), xlim=c(0.84, 1)) +
  geom_ribbon(aes(ymin = conf.low, ymax = conf.high, fill=group), alpha = 0.2) +
  scale_fill_manual(values=group.colors, name="fill")+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(colour = "black", size=0.5)) +
  xlab("Synchrony temperature") +
  theme_bw() +
  theme(text = element_text(family = "serif", size=14)) +
  labs(color='Movement') +
  scale_fill_manual(values=group.colors,name = "Migratory \nTactic", labels=c("Resident", "Short", "Long")) + 
  scale_color_manual(values=group.colors, name = "Migratory \nTactic", labels=c("Resident", "Short","Long")) + 
  ylab("Synchrony growth rate") +
  theme(legend.position = c(0.17, 0.84)) +
  guides(fill=guide_legend(nrow=3)) +
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16))


## Panel D: Butterflies, Voltinism x Precipitation
group.colors <- c("#117733", "grey30")
ggplot(df_PANELD, aes(x, predicted,  colour=group)) + 
  geom_line(size=1) +
  coord_cartesian(xlim=c(0.84, 1), ylim=c(-0.2, 0.6)) +
  geom_ribbon(aes(ymin = conf.low, ymax = conf.high, fill=group), alpha = 0.2) +
  scale_fill_manual(values=group.colors, name="fill") +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(colour = "black", size=0.5)) +
  xlab("Synchrony precipitation") +
  theme_bw() +
  theme(text = element_text(family = "serif", size=14)) +
  labs(color='Voltinism') +
  scale_fill_manual(values=group.colors,name = "Voltinism", labels=c("Multi", "Bi", "Uni")) + 
  scale_color_manual(values=group.colors, name = "Voltinism", labels=c("Multi", "Bi", "Uni")) + 
  ylab("Synchrony growth rate") +
  theme(legend.position = c(0.16, 0.89)) +
  guides(fill=guide_legend(nrow=2)) +
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16))


## Panel E: Butterflies, Larval diet breadth 
group.colors <- c("black")
ggplot(df_PANELE, aes(x, predicted, colour=group)) + 
  geom_line(size=1) +
  coord_cartesian(ylim=c(-0.2, 0.6)) +
  geom_ribbon(aes(ymin = conf.low, ymax = conf.high, fill=group), alpha = 0.3) +
  scale_fill_manual(values=group.colors, name="fill")+
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.background = element_rect(colour = "black", size=0.5)) +
  xlab("Larval Dietary Breadth") +
  theme_bw() +
  theme(text = element_text(family = "serif", size=14)) +
  ylab("Synchrony growth rate") +
  theme(legend.position="none") +
  scale_colour_manual(values=c("black")) +
  scale_fill_manual(values=c("black"), name="fill")+
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16))

## Panel F: Butterflies, Migration tactic
group.colors <-c("#882255", "goldenrod")
ggplot(df_PANELF, aes(x, predicted)) + 
  geom_point(size=3) +
  coord_cartesian(ylim=c(-0.2, 0.6)) +
  scale_x_discrete(labels=c("Resident", "Migrant")) +
  geom_point(size=4,  colour=group.colors) + 
  geom_pointrange(aes(ymin=conf.low, ymax=conf.high, alpha = 0.15, colour=group.colors), linewidth=1) +
  theme_bw() + 
  theme(text = element_text(family = "serif", size=14)) +
  xlab("Migratory Tactic") +
  ylab("Synchrony growth rate") +
  scale_colour_manual(values=c("#882255", "goldenrod")) +
  theme(legend.position = "none")+
  theme(axis.text=element_text(size=13),
        axis.title=element_text(size=16))

