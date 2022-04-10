# Pewlett Hackard Analysis
## Overview
To determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.<br />

## Results
- Through joining the employees table and the titles table and narrowing down the employees born between 1952 and 1955 that will be retiring in the near future, I created a retirement_titles table to match each employees with their titles, resulting a total of 133,776 rows of data.<br />
<img width="634" alt="Screen Shot 2022-04-10 at 2 35 06 PM" src="https://user-images.githubusercontent.com/98621924/162640853-effdb0df-897e-45d7-bb0c-6f04a9234593.png"><br />
<img width="439" alt="Screen Shot 2022-04-10 at 2 54 59 PM" src="https://user-images.githubusercontent.com/98621924/162641519-22be2ebc-e1e7-472b-89e7-5c6ad2adc820.png"><br />
- Step 2 was to remove duplicate rows from employees moving to different positions during their career, by using DISTINCT ON to keep their newst position, and isolating results from employees that are still employed by the firm. The number of employees in newly-created the unique_titles table is 72,458, suggesting that there are currently around 72,500 employees that will be retiring in the next few years.<br />
<img width="488" alt="Screen Shot 2022-04-10 at 2 55 44 PM" src="https://user-images.githubusercontent.com/98621924/162641541-be6a3129-be6a-4878-961b-0f3e55268a2b.png"><br />
<img width="411" alt="Screen Shot 2022-04-10 at 2 58 59 PM" src="https://user-images.githubusercontent.com/98621924/162641672-967f7bba-7d8e-42fc-b6a8-6919f2e3e64d.png"><br />
- The unique titles table allow us to count the number of employees in each title, with the most retiring from senior engineer and senior staff positions, 25916 and 24926, respectively.<br />
<img width="351" alt="Screen Shot 2022-04-10 at 2 59 35 PM" src="https://user-images.githubusercontent.com/98621924/162641699-42db5ec1-2415-484f-81d7-0cf430952457.png"><br />


## Summary
- From looking at the make up of all current employees, in the second table, we can see that the retiring employees makes up about 30% of all current employees. Meaning that, if the number of employees needs to remain the same after the wave of retirement, would require around over 70,000 new hires to fill these positions or lower ranking positions with older employees moving up the ranks.<br />
<img width="339" alt="Screen Shot 2022-04-10 at 3 03 20 PM" src="https://user-images.githubusercontent.com/98621924/162641766-a166d16b-3cc3-4c8e-aef8-244af23a7ff3.png"><br />
<img width="660" alt="Screen Shot 2022-04-10 at 3 57 13 PM" src="https://user-images.githubusercontent.com/98621924/162643480-4f5cd795-4826-409e-9b0e-bf414fbbc38f.png"><br />
- There are a total number 1549 employees eligibl for the mentorship program. If the firm is looking to maintain the current number of employees, the number of eligibile mentors is not enough.<br /> 
<img width="300" alt="Screen Shot 2022-04-10 at 4 21 00 PM" src="https://user-images.githubusercontent.com/98621924/162644242-43de50fb-6613-44d2-9473-eb1d55bf5d33.png"><br />
