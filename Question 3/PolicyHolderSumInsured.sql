CREATE VIEW PolicyHolderSumInsured AS( SELECT PL.policy_number "Policy Number", CONCAT(PL.policy_holder_first_name," ",PL.policy_holder_last_name) AS "Policy Holder Name" , PI.sum_insured "Sum Insured" FROM policy PL INNER JOIN policy_item PI ON PL.policy_number = PI.policy_number );