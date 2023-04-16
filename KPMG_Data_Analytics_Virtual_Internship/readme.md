# KPMG Data Analytics Virtual Internship

## What is Forage?
- Forage is an open access platform designed to unlock exciting careers for students by connecting them with our company-endorsed Virtual Work Experience Programs.

## What is the KPMG Data Analytics Consulting Virtual Internship?
- In this online program, you will get to complete similar work that our Graduates do at KPMG. You will learn what it is like working at one of the world’s best data analytics team, and build skills required to excel as a analytics consultant.

## Task 1
### Data Quality Assessment
Assessment of data quality and completeness in preparation for analysis

**Here is your task**:
Draft an email to the client identifying the data quality issues and strategies to mitigate these issues. Refer to ‘Data Quality Framework Table’ and resources below for criteria and dimensions which you should consider.

**My Answer**

Dear Value customer

After I check the data , Could you please give me more detail?

Sheet “Transactions”
-	What is ‘blank’ it mean from column “online_order”, “brand”, “product_line”,  “product_class”, “product_size”, “standard_cost” and  “product_first_sold_date”?
-	On column “product_first_sold_date” the data not look like a date format. What is it? 
Sheet “NewCustomerList”
-	On column “gender” :  What is “U” mean?
-	On column “deceased_indicator” and “country” : It just only “N” and “Australia” value, do you still need that column?
-	Could you please more explain what is “tenure”, “Rank” and “Value” column?
-	What is unit of “property_valuation” column?
-	 Are you serious about ‘blank’ or ’n/a’ value in “last_name”, “DOB”, “job_title” and “job_industry_category” column?

Sheet “CustomerDemographic”
-	customer_id 5034 show in “Transactions” sheet but don’t have in “CustomerDemographic” sheet. What is demographic of customer_id “5034”?
-	Colum “gender” : “F”, “Femal” and “Female” are same?. Also “M” and “Male” are same?
-	What correct date of birth of “1843-12-21” that we found in “DOB” column?
-	We can’t read “default” column. What is it?
-	 Are you serious about ‘blank’ or ’n/a’ value in “last_name”, “DOB”, “job_title” , “job_industry_category” and “tenure” column?

Sheet “CustomerAddress”
-	customer_id number “3”, “10”, “22” and “23” are missing.
-	Colum “state” : “New South Wales” and “NSW” are same?. Also “Victoria” and “VIC” are same?

Best regards

Golf Nattapat.

## Task 2

### Data Insights

Targeting high value customers based on customer demographics and attributes.

**Here is your task**

Using the existing 3 datasets (Customer demographic, customer address and transactions) as a labelled dataset, please recommend which of these 1000 new customers should be targeted to drive the most value for the organisation. 

**My Answer**

![Slide1](https://user-images.githubusercontent.com/77894515/232273276-1cbe48f2-f808-4714-b85b-c26a13c584fd.PNG)
![Slide2](https://user-images.githubusercontent.com/77894515/232273279-ea563217-9361-45cb-98bd-7ff1efb286b2.PNG)
![Slide3](https://user-images.githubusercontent.com/77894515/232273283-fb28cf04-75e6-4698-82b2-9d894dfa857c.PNG)
![Slide4](https://user-images.githubusercontent.com/77894515/232273291-da16632c-f1c9-4fa9-b08e-afa8001be0d5.PNG)
![Slide5](https://user-images.githubusercontent.com/77894515/232273293-41da0dff-60ef-4f6d-b02c-4a3df7504e4b.PNG)

### You can see analysis in `R` language  [Here](https://github.com/golfung/Training/blob/main/KPMG_Data_Analytics_Virtual_Internship/Module_2_RAnalysis/KPMG_Analysis.R)
### Or you can [Click Here](https://posit.cloud/content/5189441) if you have posit.cloud account.



