```{r}
Tillage<-c("Yes", "No", "Partially")
Values<-c(70.9, 16.1, 13.0)
Data<-data.frame(Tillage, Values)


ggplot(Data, aes(x="", y=Values, fill=Tillage, label=Tillage)) + geom_col(width=0.5, color="black") + labs(title="Adoption of tillage", x="", y="% respondents", caption="Source: University of Wisconsin-Madison") + ylim(0, 100) +
  #coord_polar(theta = "y", start = pi / 3) + 
  geom_label(aes(label=str_c(format(abs(Values)), "%")), fill="white", position = position_stack(vjust = 0.5), size=7) +
  theme(axis.text.y =element_blank(), axis.text.x =element_text(size=14, color="black"), 
        plot.title=element_text(size=30, face="bold", color="red", hjust=-0.1),
        axis.title=element_text(face="bold", size=25), panel.border = element_rect(colour = "black", fill=NA),
        panel.background = element_rect(fill="white", color = "black"), legend.position=c(0.85,0.77), 
        legend.title = element_text(face="bold"), legend.key = element_blank(), 
        panel.grid.major = element_line(color = "white"), legend.text = element_text(size = 18, colour = "black"),
        panel.grid.minor = element_blank()) + scale_fill_brewer("", palette="Set1") +
  annotate("text", x = 0.6, y = 5, label = "Respondents = 230") +
  annotate("text", x = 0.57, y = 1, label = "Answers = 230") + 
  ggsave("Tillage.tiff", dpi=600)
```

```{r}
Auxin<-c("Yes", "No", "Yes", "No")
Values<-c(37.9, 62.1, 77.2, 22.8)
Type <-c("Auxin tolerant crops",  "Auxin tolerant crops", "Cover crops", "Cover crops")
Data<-data.frame(Type, Auxin, Values)


ggplot(Data, aes(x="", y=Values, fill=Auxin, label=Auxin)) + geom_col(color="black") + labs(title="Crop adoption interests", x="", y="% respondents", caption="Source: University of Wisconsin-Madison") + 
  ylim(0, 100) +
  coord_polar(theta = "y", start = pi / 3) + facet_wrap(~Type) +
  geom_label(aes(label=str_c(format(abs(Values)), "%")), fill="white", position = position_stack(vjust = 0.5), size=8) +
  theme(axis.text =element_blank(),  plot.title=element_text(size=30, face="bold", color="red", hjust=-0.5),
        axis.title.x=element_text(size=25,face="bold"), panel.border = element_rect(colour = "black", fill=NA),
        panel.background = element_rect(fill="white", color = "black"), legend.position="bottom",
        legend.title = element_text(face="bold"), 
        legend.key = element_blank(), 
        panel.grid.major = element_line(color = "white"), legend.text = element_text(size = 18, colour = "black"),
        panel.grid.minor = element_blank(), strip.background = element_rect(fill="grey95", color="white"), strip.text.y = element_text(size = 16, color="white"), strip.text.x = element_text(size = 20, face="bold", color="black")) + scale_fill_brewer("", palette="Set3") +
  #annotate("text", x = 0, y = 0, label = "Respondents = 230") + 
  ggsave("Auxin_cover.tiff", height=5, width=8, dpi=600)
```