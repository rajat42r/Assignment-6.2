#1
sum(is.na(titanic3$embarked))
embarked_fare<- titanic3 %>% filter(titanic3$embarked != NA)
sum(is.na(embarked_fare))
ggplot(embarked_fare,aes(x=embarked,y=fare,fill=factor(pclass)))+
  geom_boxplot()+
  geom_hline(aes(yintercept=80),
             colour='red',linetype='dashed',lwd=2)+
  scale_y_continuous(labels = dollar_format())+
  theme_few()

#2
ggplot(titanic3[1:891,],aes(pclass,fill=factor(survived)))+
  geom_histogram()+
  facet_grid(.~sex)+
  theme_few()