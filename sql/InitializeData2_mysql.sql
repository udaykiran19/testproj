CREATE TABLE CALL1
(
  id integer NOT NULL AUTO_INCREMENT,
  subject character varying(50) NOT NULL,
  direction integer,
  status integer,
  start_date datetime,
  related_object character varying(50),
  related_record integer,
  reminder_email boolean,
  reminder_option_email integer,
  reminder_template integer,
  notes character varying(50),
  assigned_to integer,
  owner integer,
  created_by integer,
  updated_by integer,
  created_on datetime,
  updated_on datetime,
  CONSTRAINT call1_pkey PRIMARY KEY(id),
  CONSTRAINT call1_fkey1 FOREIGN KEY (direction)
  REFERENCES calldirection (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey2 FOREIGN KEY (status)
  REFERENCES callstatus (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey3 FOREIGN KEY (reminder_option_email)
  REFERENCES reminderoption (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey4 FOREIGN KEY (reminder_template)
  REFERENCES emailTemplate (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey5 FOREIGN KEY (assigned_to)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey6 FOREIGN KEY (owner)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey7 FOREIGN KEY (created_by)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT call1_fkey8 FOREIGN KEY (updated_by)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION 
  );

CREATE TABLE ACCOUNT
(
	id integer NOT NULL AUTO_INCREMENT,
	name character varying(50) NOT NULL,
	account_level integer,
	currency integer,
	capital integer,
	annual_revenue integer,
	company_size integer,
	account_nature integer,
	office_phone character varying(50),
	website character varying(50),
	fax character varying(50),
	bill_street character varying(50),
	bill_city character varying(50),
	bill_state character varying(50),
	bill_postal_code character varying(50),
	bill_country character varying(50),
	ship_street character varying(50),
	ship_city character varying(50),
	ship_state character varying(50),
	ship_postal_code character varying(50),
	ship_country character varying(50),
	email character varying(50),
	notes character varying(50),
	type integer,
	industry integer,
	legal_representative character varying(50),
	business_scope character varying(50),
	create_date datetime,
	credit character varying(50),
	reputation character varying(50),
	market_position character varying(50),
	development_potential character varying(50),
	operational_characteristics character varying(50),
	operational_direction character varying(50),
	sic_code character varying(50),
	ticket_symbol character varying(50),
	manager integer,
	assigned_to integer,
  	owner integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
  	CONSTRAINT account_pkey PRIMARY KEY (id ),
  	CONSTRAINT account_fkey1 FOREIGN KEY (account_level)
    REFERENCES accountlevel (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey2 FOREIGN KEY (currency)
    REFERENCES currency (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey3 FOREIGN KEY (capital)
    REFERENCES currency (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey4 FOREIGN KEY (annual_revenue)
    REFERENCES annualrevenue (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey5 FOREIGN KEY (company_size)
    REFERENCES companysize (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey6 FOREIGN KEY (account_nature)
    REFERENCES accountnature (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey7 FOREIGN KEY (type)
    REFERENCES accounttype (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey8 FOREIGN KEY (industry)
    REFERENCES industry (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey9 FOREIGN KEY (manager)
    REFERENCES account (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey10 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT account_fkey11 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT account_fkey12 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT account_fkey13 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
	
);



CREATE TABLE ATTACHMENT
(
	id integer NOT NULL AUTO_INCREMENT,
	name character varying(50) NOT NULL,
	content varbinary(10000),
	created_by integer,
	updated_by integer,
	created_on datetime,
  	updated_on datetime,
  CONSTRAINT attachment_pkey PRIMARY KEY (id ),
   CONSTRAINT attachment_fkey1 FOREIGN KEY (created_by)
   REFERENCES users (id) MATCH SIMPLE
   ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT attachment_fkey2 FOREIGN KEY (updated_by)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE CAMPAIGN
(
	id integer NOT NULL AUTO_INCREMENT,
	name character varying(50) NOT NULL,
	status integer,
	start_date datetime,
	end_date datetime, 
	type integer,
	currency integer,
	impressions double,
	expected_cost double,
	actual_cost double,
	expected_revenue double,
	expected_respone double,
	objective character varying(50),
	notes character varying(50),
	assigned_to integer,
  	owner integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT campaign_pkey PRIMARY KEY (id ),
	 CONSTRAINT campaign_fkey1 FOREIGN KEY (status)
      REFERENCES campaignstatus (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
      	 CONSTRAINT campaign_fkey2 FOREIGN KEY (type)
      REFERENCES campaigntype (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
      	 CONSTRAINT campaign_fkey3 FOREIGN KEY (currency)
      REFERENCES currency (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT campaign_fkey4 FOREIGN KEY (assigned_to)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
        CONSTRAINT campaign_fkey5 FOREIGN KEY (owner)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT campaign_fkey6 FOREIGN KEY (created_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT campaign_fkey7 FOREIGN KEY (updated_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE CASEINSTANCE
(
	id integer NOT NULL AUTO_INCREMENT,
	priority integer,
	status integer,
	account integer,
	type integer,
	origin integer,
	reason integer,
	subject character varying(50) NOT NULL,
	notes character varying(50),
	resolution character varying(50),
	assigned_to integer,
  	owner integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT caseinstance_pkey PRIMARY KEY (id ),
	CONSTRAINT caseinstance_fkey1 FOREIGN KEY (priority)
    REFERENCES casepriority (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey2 FOREIGN KEY (status)
    REFERENCES casestatus (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey3 FOREIGN KEY (account)
    REFERENCES account (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey4 FOREIGN KEY (type)
    REFERENCES casetype (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey5 FOREIGN KEY (origin)
    REFERENCES caseorigin (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey6 FOREIGN KEY (reason)
    REFERENCES casereason (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey7 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT caseinstance_fkey8 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT caseinstance_fkey9 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT caseinstance_fkey10 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);


	CREATE TABLE CHANGELOG
(
	id integer NOT NULL AUTO_INCREMENT,
	entity_name character varying(50) NOT NULL,
	record_id integer NOt NULL,
	column_name character varying(50),
	old_value character varying(50),
	new_value character varying(50),
	updated_by integer,
	updated_on datetime,
	CONSTRAINT changelog_pkey PRIMARY KEY (id),
	CONSTRAINT changelog_fkey FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
	
);

	CREATE TABLE CONTACT
(
	id integer NOT NULL AUTO_INCREMENT,
	salutation integer,
	first_name character varying(50),
	last_name character varying(50) NOT NULL,
	office_phone character varying(50),
	title character varying(50),
	mobile character varying(50),
	department character varying(50),
	fax character varying(50),
	skype_id character varying(50),
	account integer,
	website character varying(50),
	primary_street character varying(50),
	primary_city character varying(50),
	primary_state character varying(50),
	primary_postal_code character varying(50),
	primary_country character varying(50),
	other_street character varying(50),
	other_city character varying(50),
	other_state character varying(50),
	other_postal_code character varying(50),
	other_country character varying(50),
	email character varying(50),
	attachment integer,
	fileName character varying(50),
	origo character varying(50),
	height double,
	weight double,
	relationship character varying(50),
	character1 character varying(50),
	interest character varying(50),
	taboo character varying(50),
	religious integer,
	habit character varying(50),
	diet character varying(50),
	notes character varying(50),
	report_to integer,
	not_call boolean,
	leadSource integer,
	campaign integer,
	owner integer,
	assigned_to integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT contact_pkey PRIMARY KEY (id),
	CONSTRAINT contact_fkey1 FOREIGN KEY (salutation)
    REFERENCES salutation (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey2 FOREIGN KEY (account)
    REFERENCES account (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey3 FOREIGN KEY (attachment)
    REFERENCES attachment (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey4 FOREIGN KEY (religious)
    REFERENCES religious (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey5 FOREIGN KEY (report_to)
    REFERENCES contact (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey6 FOREIGN KEY (leadSource)
    REFERENCES leadSource (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey7 FOREIGN KEY (campaign)
    REFERENCES campaign (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT contact_fkey8 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT contact_fkey9 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT contact_fkey10 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT contact_fkey11 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

	
	CREATE TABLE DOCUMENT(
	id integer NOT NULL AUTO_INCREMENT,
	fileName character varying(50),
	attachment integer,
	status integer,
	name character varying(50) NOT NULL,
	revision integer,
	publish_date datetime,
	expiration_date datetime,
	category integer,
	sub_category integer,
	notes character varying(50),
	related_document integer,
	owner integer,
	assigned_to integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT document_pkey PRIMARY KEY (id),
	CONSTRAINT document_fkey1 FOREIGN KEY (attachment)
    REFERENCES attachment (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey2 FOREIGN KEY (status)
    REFERENCES documentStatus (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey3 FOREIGN KEY (category)
    REFERENCES documentcategory (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey4 FOREIGN KEY (sub_category)
    REFERENCES documentsubcategory (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey5 FOREIGN KEY (related_document)
    REFERENCES document (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey6 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT document_fkey7 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT document_fkey8 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT document_fkey9 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);
		
		
	CREATE TABLE EMAILSETTING(
	id integer NOT NULL AUTO_INCREMENT,
	from_name character varying(50) NOT NULL,
	from_address character varying(50) NOT NULL,
	smtp_port integer,
	gmail_address character varying(50),
	gmail_password character varying(50),
	yahoo_mail_ID character varying(50),
	yahoo_mail_password character varying(50),
	smtp_server character varying(50),
	email_provider integer,
	smtp_authentication boolean,
	smtp_protocol integer,
	smtp_username character varying(50),
	smtp_password character varying(50),
	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT emailsetting_pkey PRIMARY KEY (id),
	CONSTRAINT emailsetting_fkey1 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT emailsetting_fkey2 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

	CREATE TABLE LEAD(
	id integer NOT NULL AUTO_INCREMENT,
	salutation integer,
	first_name character varying(50),
	last_name character varying(50) NOT NULL,
	office_phone character varying(50),
	company character varying(50),
	title character varying(50),
	mobile character varying(50),
	department character varying(50),
	fax character varying(50),
	account integer,
	primary_street character varying(50),
	primary_city character varying(50),
	primary_state character varying(50),
	primary_postal_code character varying(50),
	primary_country character varying(50),
	other_street character varying(50),
	other_city character varying(50),
	other_state character varying(50),
	other_postal_code character varying(50),
	other_country character varying(50),
	email character varying(50),
	notes character varying(50),
	status integer,
	status_description character varying(50),
	lead_source integer,
	lead_source_description character varying(50),
	opportunity_amount character varying(50),
	referred_by character varying(50),
	campaign integer,
	not_call boolean,
	owner integer,
	assigned_to integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
  	CONSTRAINT lead_pkey PRIMARY KEY (id),
  	CONSTRAINT lead_fkey1 FOREIGN KEY (salutation)
    REFERENCES salutation (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT lead_fkey2 FOREIGN KEY (account)
    REFERENCES account (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT lead_fkey3 FOREIGN KEY (status)
    REFERENCES leadstatus (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT lead_fkey4 FOREIGN KEY (lead_source)
    REFERENCES leadsource (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT lead_fkey5 FOREIGN KEY (campaign)
    REFERENCES campaign (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT lead_fkey6 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT lead_fkey7 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT lead_fkey8 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT lead_fkey9 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);


	CREATE TABLE MEETING(
	id integer NOT NULL AUTO_INCREMENT,
	subject character varying(50) NOT NULL,
	status integer,
	start_date datetime,
	end_date datetime, 
	related_object character varying(50),
	related_record integer,
	location character varying(50),
	reminder_email boolean,
	reminder_option_email integer,
	reminder_template integer,
	notes character varying(50),
	owner integer,
	assigned_to integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT meeting_pkey PRIMARY KEY (id),
	CONSTRAINT meeting_fkey1 FOREIGN KEY (status)
    REFERENCES meetingstatus (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT meeting_fkey2 FOREIGN KEY (reminder_option_email)
    REFERENCES reminderOption (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT meeting_fkey3 FOREIGN KEY (reminder_template)
    REFERENCES emailTemplate (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT meeting_fkey4 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT meeting_fkey5 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT meeting_fkey6 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT meeting_fkey7 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION

);


	CREATE TABLE TARGET(
	id integer NOT NULL AUTO_INCREMENT,
	salutation integer,
	first_name character varying(50),
	last_name character varying(50) NOT NULL,
	office_phone character varying(50),
	company character varying(50),
	title character varying(50),
	mobile character varying(50),
	department character varying(50),
	fax character varying(50),
	account integer,
	primary_street character varying(50),
	primary_city character varying(50),
	primary_state character varying(50),
	primary_postal_code character varying(50),
	primary_country character varying(50),
	other_street character varying(50),
	other_city character varying(50),
	other_state character varying(50),
	other_postal_code character varying(50),
	other_country character varying(50),
	email character varying(50),
	notes character varying(50),
	not_call boolean,
	lead_id integer,
	owner integer,
	assigned_to integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
	CONSTRAINT target_pkey PRIMARY KEY (id),
	CONSTRAINT target_fkey1 FOREIGN KEY (salutation)
    REFERENCES salutation (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT target_fkey2 FOREIGN KEY (account)
    REFERENCES account (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT target_fkey3 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT target_fkey4 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT target_fkey5 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

	
	CREATE TABLE TARGETLIST(
	id integer NOT NULL AUTO_INCREMENT,	
	name character varying(50) NOT NULL,	
	assigned_to integer,
	notes character varying(50),
	updated_by integer,
	created_on datetime,
  	updated_on datetime,
  	owner integer,
  	CONSTRAINT targetlist_pkey PRIMARY KEY (id),
  	CONSTRAINT targetlist_fkey1 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT targetlist_fkey2 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT targetlist_fkey3 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);		
		

	CREATE TABLE TARGETLISTTYPE(
	id integer NOT NULL AUTO_INCREMENT,	
	value character varying(50) NOT NULL,	
	label_en_US character varying(50),
	label_zh_CN character varying(50),
	sequence integer,
	CONSTRAINT targetlisttype_pkey PRIMARY KEY (id)
	);
	

	CREATE TABLE TASK(
	id integer NOT NULL AUTO_INCREMENT,	
	subject character varying(50) NOT NULL,	
	status integer,
	start_date datetime,
	due_date datetime, 
	related_object character varying(50),
	related_record integer,
	contact integer,
	priority integer,
	description  character varying(50),
	notes  character varying(50),
	owner integer,
	assigned_to integer,
  	created_by integer,
  	updated_by integer,
	created_on datetime,
  	updated_on datetime,
  	CONSTRAINT task_pkey PRIMARY KEY (id),
  	CONSTRAINT task_fkey1 FOREIGN KEY (status)
    REFERENCES taskstatus (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT task_fkey2 FOREIGN KEY (contact)
    REFERENCES contact (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
     CONSTRAINT task_fkey3 FOREIGN KEY (priority)
    REFERENCES taskpriority (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT task_fkey4 FOREIGN KEY (assigned_to)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT task_fkey5 FOREIGN KEY (owner)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT task_fkey6 FOREIGN KEY (created_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  	CONSTRAINT task_fkey7 FOREIGN KEY (updated_by)
    REFERENCES users (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

