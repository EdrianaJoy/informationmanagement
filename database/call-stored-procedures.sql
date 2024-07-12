-- Calls the procedure Delete_Applicant(IN app_id_delete INT) to delete records of the applicant by using the app_id
CALL Delete_Applicant(app_id_delete);

-- Calls the procedure  Create_Applicant(new_app_name, ...) to create records of the applicant
CALL Create_Applicant(
	new_app_name,
  new_date_birth,
  new_app_add,
  new_city,
  new_state,
  new_zip_code,
  new_phone_num,
  new_email_add,
  new_emp_type,
  new_pos_app,
  new_des_sal,
  new_date_start,
  new_comp_name,
  new_work_period,
  new_comp_pos,
  new_comp_name_1,
  new_work_period_1,
  new_comp_pos_1,
  new_comp_name_2,
  new_work_period_2,
  new_comp_pos_2,
  new_school_name,
  new_school_loc,
  new_date_grad,
  new_educ_attain,
  new_skill_one,
  new_skill_two,
  new_skill_three,
  new_skill_four
);

-- Calls the procedure Display_Applicant() to view id, name, address, and email address of the applicant and the application status
CALL Display_Applicant();

-- Calls the procedure Update_Status(update_application) to update the status of the application
CALL Update_Status(update_application, app_id_update);
