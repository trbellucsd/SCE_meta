# Load the metafor package
library(metafor)
library("readxl")

#overall meta-analysis

data <- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx",
                   sheet = "data_all studies")


##meta-analysis for all studies
res <- rma.uni(yi = log(OR), sei = SE, data = data, method = "REML")

##Print the meta-analysis results
summary(res)

##forest plot
plot_data<-forest(res, slab = data$study, transf = exp, refline = 1)

#meta-analysis for suicide

data_suicide <- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx", sheet = "data_suicide_excluded")



res_suicide <- rma.uni(yi = log(OR), sei = SE, data = data_suicide, method = "REML")

##Print the meta-analysis results
summary(res_suicide)

##forest plot
plot_suicide<-forest(res_suicide, slab = data_suicide$study, transf = exp, refline = 1)

#meta-analysis for sexual health

data_sexualhealth<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                           , sheet = "data_sexualhealth")



res_sexualhealth <- rma.uni(yi = log(OR), sei = SE, data = data_sexualhealth, method = "REML")

# Print the meta-analysis results
summary(res_sexualhealth)

#forest plot
plot_sexualhealth<-forest(res_sexualhealth, slab = data_sexualhealth$study, transf = exp, refline = 1)


#meta-analysis for psychological health

data_psychhealth<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                               , sheet = "data_psychologicalhealth")



res_psychhealth <- rma.uni(yi = log(OR), sei = SE, data = data_psychhealth, method = "REML")

# Print the meta-analysis results
summary(res_psychhealth)

#forest plot
plot_psychhealth<-forest(res_psychhealth, slab = data_psychhealth$study, transf = exp, refline = 1)


#meta-analysis for substance use

data_substanceuse<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                              , sheet = "data_substanceuse")



res_substanceuse <- rma.uni(yi = log(OR), sei = SE, data = data_substanceuse, method = "REML")

# Print the meta-analysis results
summary(res_substanceuse)

#forest plot
plot_substanceuse<-forest(res_substanceuse, slab = data_substanceuse$study, transf = exp, refline = 1)


#meta-analysis for housing instability

data_housinginstability<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                               , sheet = "data_housinginstability")



res_housinginstability <- rma.uni(yi = log(OR), sei = SE, data = data_housinginstability, method = "REML")

# Print the meta-analysis results
summary(res_housinginstability)



#meta-analysis for adulthood abuse

data_adultabuse<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                                     , sheet = "data_adultabuse")



res_adultabuse <- rma.uni(yi = log(OR), sei = SE, data = data_adultabuse, method = "REML")

# Print the meta-analysis results
summary(res_adultabuse)

#forest plot
plot_adultabuse<-forest(res_adultabuse, slab = data_adultabuse$study, transf = exp, refline = 1)


#meta-analysis for physical health

data_physicalhealth<- read_excel("Z:/Tyler/Research/a_Projects and Paper Drafts/Meta-Analyses/ACE and Health Problems in LGBT/meta-analysis data updated 10152024.xlsx"
                             , sheet = "data_physicalhealth")



res_physicalhealth<- rma.uni(yi = log(OR), sei = SE, data = data_physicalhealth, method = "REML")

# Print the meta-analysis results
summary(res_physicalhealth)

#forest plot
plot_physicalhealth<-forest(res_physicalhealth, slab = data_physicalhealth$study, transf = exp, refline = 1)


