# 824FinalProject
This app is used to consider a multitude of factors that impact a household’s ability to receive insurance for their homes in Chicago. 

The factors of consideration are: 
 
     •	Race: racial composition in percent minority
 
     •	Fire: fires per 100 housing units
 
     •	Theft: theft per 1000 population
 
     •	Age: percent of housing units built before 1939
 
     •	Income: median family income in thousands of dollars

Ideally these factors would be compared to given rejection or renewal rates in an area. However, given that this data would have to be taken from multiple insurance companies, the possibility of getting them all and trusting the validity of the data is not high. Instead, these factors are plotted against “Involact”, which represents new FAIR plan policies and renewals per 100 housing units. 

The Fair Access to Insurance Requirements (FAIR) plan is a state-mandated program that provides fair access to insurance for households that are unable to receive insurance for their property. Typically, it is because insurers consider them high risk and are unwilling to cover them under the standard voluntary market. Instead, these households enter the FAIR plan which is a shared market plan. 

Under this agreement, the parties within the plan pool resources together to pay the insurance of other households when disaster strikes. It is partially subsidized by the government, but its premiums are much higher than regular insurance. 

As a result, most FAIR plan policy holders only get this coverage after they have been rejected by insurers. This means that the distribution of FAIR plan policies can be used as an inverse measure of insurance availability in Chicago.

This app allows you to select one of the given five factors. After doing so, you will see a plotted relationship between the chosen factor and Involact. It will also provide a boxplot of the chosen factor so that outliers can be noted for consideration. 

Below is a sample of what the app should portray when it is run.

![image](https://user-images.githubusercontent.com/55212814/127678653-a95361eb-6550-460c-8115-3edbe40b606b.png)

Source of data - "Data : A Collection of Problems from Many Fields for the Student and Research Worker" by D. Andrews and A. Herzberg published by Springer-Verlag, in 1985


