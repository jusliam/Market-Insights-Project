# Food & Beverage Industry Insights
### *By: Justin Hector* 
![Alt text](<https://github.com/jusliam/Market-Insights-Project/blob/main/images/energy_drink.jpg>)
## Background:
**CodeX** is a German beverage company that is aiming to make its mark in the Indian market. A few months ago, they launched their energy drink in 10 cities in India. 
Their Marketing team is responsible for increasing brand awareness, market share, and product development. They conducted a survey in those 10 cities and received results from 10k respondents. My job as a marketing data analyst is to convert these survey responses into meaningful insights for the team.

## Objectives:

- **Demographic Insights**:
    - Who prefers energy drinks more? (*male/female/non-binary*)
    - Which age groups prefer energy drinks more?
    - Which type of marketing reaches the most youth? (*15-30*)
- **Consumer Preferences**:
    - What are the preferred ingredients of energy drinks among respondents?
    - What packaging preferences do respondents have for energy drinks?
- **Competition Analysis**:
    - Who are the current market leaders?
    - What are the primary reasons consumers prefer those brands over ours?
- **Marketing Channels & Brand Awareness**:
    - Which marketing channel can be used to reach more customers?
    - How effective are different marketing strategies and channels in reaching our customers?
- **Brand Penetration**:
    - What do people thing about our brand? (*overall rating*)
    - Which cities do we need to focus on more?
- **Purchase Behavior**:
    - Where do respondents prefer to purchase energy drinks?
    - What are typical consumption situations for energy drinks among respondents?
    - What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
- **Product Development**:
    - Which area of business should we focus more on our product development? (*Branding/Taste/Availability*)

## Data Overview:
The data consisted of three csv files: 
- dim_cities.csv
- dim_respondents.csv 
- fact_survey_responses.csv. <br>
  
The cities file focused on information about the 10 cities. The respondents file focused on information about the 10000 respondents such as their age range, gender and city they resided in. The most important file is the survey responses which contained all the answers to the questions asked. <br>

Link to the dataset can be found [here](https://github.com/jusliam/Market-Insights-Project/tree/main/Dataset).
<br>
#### **Database Schema**
![Alt text](<https://github.com/jusliam/Market-Insights-Project/blob/main/images/market_insights_schema.png>)

## Project Breakdown:
### Analytical Tools Used:
- Microsoft Excel
- MySQL
- Tableau <br>

**Microsoft Excel** was used to explore each of the three csv files to get a better understanding and feel for the data. This was mainly used to check for duplicates, errors and inconsistent data in regard to the survey responses.
<br>
**MySQL** was used for data exploration and the analysis needed to complete the objectives listed above. <br>
**Tableau** was used to design dashboards for presenting the insights to the marketing team.

## Results & Findings:

#### **Demographic Insights:**
- **Males prefered energy drinks more with 60%** , females with 35% and non-binary with 5%.
- **19-30 age group preferred energy drinks the most with 55%.** <br> 31-45 with 24%. <br> 15-18 with 15%. <br> 46-65 with 4%. <br> And those 65+ preferred energy drinks the least with 2%.
- **The marketing campaign which was most effective in reaching the youth (15-30) was Online Ads with 34%.** The least effective channel was Print Media with 5%.
<br>
Based on these insights, the marketing team should **focus mainly on crafting campaigns that resonate with males between the ages 15-30 using Online Media Ads** with messages tailored to this demographic.

#### **Consumer Preferences:**
- The preferred energy drinks among respondents was **Caffeine** followed by **Vitamins**, **Sugar** and the least preferred ingredient being **Guarana**.
- The most preferred type of packaging among respondents was **Compact & Portable Cans** followed closely by **Innovative Bottle Design**.
<br>
These insights can help in product development as it gives us an idea as to the type of ingredients our customers want in our product and the best packaging design that appeals to them.

#### **Competition Analysis:**
- The current market leaders are **Cola-Coka followed by Bepsi**, Gangster, Blue Bull, Codex, Sky9 and lastly others.
- **Brand Reputation** was the main reason customers chose those brands over ours. This was followed by Taste/Experience in second and Availability in third.
<br>
Understanding who the current market leaders are and why customers prefer those brands gives us a better idea on ways we can improve our product to capture customers. **CodeX should therefore analyze the marketing strategies of Cola-Coka and Bepsi and focus on building brand reputation in order to attract more customers.**

#### **Marketing Channels & Brand Awareness:**
- The marketing channel that can be used to reach most consumers is **Online Ads with 40% of respondents preferring this method.**
-  Based on insights derived the most effective form of marketing channel is **Online Ads** and **TV Commercials**. The least effective is **Print Media**.
<br>
Understanding the best method of communicating the product to our consumers is pivotal to the success of the product. **The marketing team can use majority of their marketing budget to develop Online Ad campaigns as this gives the best chance of communicating the product to the majority of consumers**.

#### **Brand Penetration:**
- **The average rating for our brand by people who experienced our product was 3.3**. Most consumers rated our brand 3 followed by a rating of 4 and 5. **Our brand was rated 2 and 1 the least amount of times.**
- **The top 5 cities to focus on are Bangalore, Hyperbad, Mumbai, Chennai and Pune. The cities with the least amount of respondents are Lucknow, Jaipur and Delhi.**
<br>
With this in mind, the team can work towards increasing the overall average rating of our product by enhancing consumer experience while also identifying the cities where the product would be most in demand.

#### **Purchase Behavior**:
- **45% of consumers prefer to buy energy drinks from Supermarkets while 26% buy energy drinks from Online Retailers**. The remainder purchase energy drinks from Gyms & Fitness Centres (15%), Local Stores (8%) and other locations (7%).
- **Majority of respondents consumer energy drinks for Sports/Exercise reasons and Studying/Working Late reasons.**
- **43% of respondents prefer energy drinks priced between 50-99 dollars while 31% prefer a pricing range between 100-150 dollars.** 16% said they're willing to pay above 150 and 10% said they would pay below 50 dollars.

This provides valuable insights as the marketing team can choose specific places to sell the product that would result in the most amount of purchases at the desired price range for most consumers. Also, understanding why our customers consume energy drinks can help in designing marketing campaigns with certain content creators and influencers such as in this case athletes.

#### **Product Development**:
- Looking at why respondents chose leading brands over ours revealed two main reasons: **Brand Reputation** and **Availability**. Therefore we need to work on building our brand reputatiion with customers and increasing supply to various areas where energy drinks are in demand. 
- Additionally, **the number one reason why respondents have not tried our brand is due to Health Concerns.** 
- Of the respondents that tried our product, **15% would like to see Reduced Sugar Content and 12% prefer more natural ingredients.**
<br>
The marketing team can use these suggestions therefore to improve the following about our product: **Brand Reputation, Availability and a more Healthier Drink.**

## Recommendations
- Some immediate improvements that can be brought to the product is finding ways to make it a **healthier alternative** to other energy drinks currently on the market. We can experiment with drinks that contain less sugar content than the average energy drink as well as using **ingredients desired** by our respondents.
- Designing **Online Ads** as well as **running marketing campaigns** to build brand awareness and brand trust and even doing so at areas where energy drinks are bought such as supermarkets to increase **supply**.
- Based on the insights gathered, the ideal price point of our product that would appeal to most consumers is **between 50-100** dollars.
- In terms of marketing campaigns and promotions/discounts, we should focus on running **Online Ads** that appeal to a younger demographic especially males. Besides sports/working out, the second most common reason for consuming energy drinks is for studying. We can therefore run campaigns at local universities/schools involving activies such as taste tests and even offer discounts to students.
- Choosing a brand ambassador is key as they can drive brand awareness which in turn can increase sales. Knowing that energy drinks are preferred by youths, males in particular, we can choose various **athletes** to represent our brand. The second most common reasons energy drinks is consumed is for studying therefore we should focus on **younger local content creators** to promote our brand as this can help consumers *relate* to them.

## Resources

- [**MySQL Code**](https://github.com/jusliam/Market-Insights-Project/blob/main/market_insights.sql)
- [**Tableau Dashboards**](https://public.tableau.com/app/profile/justin.liam.hector/viz/MarketInsights_17078787429910/Demographic_Dashboard?publish=yes)

#### **Preview of Dashboards:**

![Alt text](<https://github.com/jusliam/Market-Insights-Project/blob/main/images/Customer%20Preferences%20Dashboard.png>)

![Alt text](<https://github.com/jusliam/Market-Insights-Project/blob/main/images/Demographic%20Dashboard.png>)

![Alt text](<https://github.com/jusliam/Market-Insights-Project/blob/main/images/Purchase%20Behavior%20Dashboard.png>)


