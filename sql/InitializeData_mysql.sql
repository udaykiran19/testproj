--CREATE SEQUENCE hibernate_sequence
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1;
--  GRANT ALTER ON hibernate_sequence TO grasscrmuser;
--ALTER TABLE hibernate_sequence
--  OWNER TO grasscrmuser;

  CREATE PROCEDURE CreateSequence (name VARCHAR(30), start INT, inc INT)
  BEGIN
     -- Create a table to store sequences
     CREATE TABLE IF NOT EXISTS _sequences
     (
         name VARCHAR(70) NOT NULL UNIQUE,
         next INT NOT NULL,
         inc INT NOT NULL
     );
 
     -- Add the new sequence
     INSERT INTO _sequences VALUES (name, start, inc);  
 END;
 
 CALL CreateSequence('hibernate_sequence', 1, 1);
 
  CREATE FUNCTION nextval (vname VARCHAR(30))
    RETURNS INT
  BEGIN
     -- Retrieve and update in single statement
     UPDATE _sequences
       SET next = (@next := next) + 1
       WHERE name = vname;
 
 	    RETURN @next;
	END;
	
	CREATE FUNCTION currval (vname VARCHAR(30))
    RETURNS INT
  BEGIN
     -- Retrieve and update in single statement
     UPDATE _sequences
       SET next = (@next := next) 
       WHERE name = vname;
 
 	    RETURN @next;
	END;
  

CREATE TABLE accountlevel
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT accountlevel_pkey PRIMARY KEY (id )
);
 GRANT ALTER ON accountlevel TO grasscrmuser;
--ALTER TABLE accountlevel
 -- OWNER TO grasscrmuser;
  
CREATE TABLE accountnature
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT accountnature_pkey PRIMARY KEY (id )
);
GRANT ALTER ON accountnature TO grasscrmuser;
--ALTER TABLE accountnature
--OWNER TO grasscrmuser;
  
CREATE TABLE accounttype
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT accounttype_pkey PRIMARY KEY (id )
);
GRANT ALTER ON accounttype TO grasscrmuser;
--ALTER TABLE accounttype
--OWNER TO grasscrmuser;
  
CREATE TABLE annualrevenue
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT annualrevenue_pkey PRIMARY KEY (id )
);
GRANT ALTER ON annualrevenue TO grasscrmuser;
--ALTER TABLE annualrevenue
 -- OWNER TO grasscrmuser;  
  
CREATE TABLE calldirection
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT calldirection_pkey PRIMARY KEY (id )
);
GRANT ALTER ON calldirection TO grasscrmuser;
--ALTER TABLE calldirection
--  OWNER TO grasscrmuser;
  
CREATE TABLE callstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT callstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON callstatus TO grasscrmuser;
--ALTER TABLE callstatus
--  OWNER TO grasscrmuser;

CREATE TABLE campaignstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT campaignstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON campaignstatus TO grasscrmuser;
--ALTER TABLE campaignstatus
--  OWNER TO grasscrmuser;
  
CREATE TABLE campaigntype
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT campaigntype_pkey PRIMARY KEY (id )
);
GRANT ALTER ON campaigntype TO grasscrmuser;
--ALTER TABLE campaigntype
--  OWNER TO grasscrmuser;
  
CREATE TABLE capital
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT capital_pkey PRIMARY KEY (id )
);
GRANT ALTER ON capital TO grasscrmuser;
--ALTER TABLE capital
--  OWNER TO grasscrmuser;  
  
CREATE TABLE caseorigin
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT caseorigin_pkey PRIMARY KEY (id )
);
GRANT ALTER ON caseorigin TO grasscrmuser;
--ALTER TABLE caseorigin
--  OWNER TO grasscrmuser;
  
CREATE TABLE casepriority
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT casepriority_pkey PRIMARY KEY (id )
);
GRANT ALTER ON casepriority TO grasscrmuser;
--ALTER TABLE casepriority
 -- OWNER TO grasscrmuser;
  
CREATE TABLE casereason
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT casereason_pkey PRIMARY KEY (id )
);
GRANT ALTER ON casereason TO grasscrmuser;
--ALTER TABLE casereason
--  OWNER TO grasscrmuser;

CREATE TABLE casestatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT casestatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON casestatus TO grasscrmuser;
--ALTER TABLE casestatus
 -- OWNER TO grasscrmuser;

CREATE TABLE casetype
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT casetype_pkey PRIMARY KEY (id )
);
GRANT ALTER ON casetype TO grasscrmuser;
--ALTER TABLE casetype
--OWNER TO grasscrmuser;
  
CREATE TABLE companysize
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT companysize_pkey PRIMARY KEY (id )
);
GRANT ALTER ON companysize TO grasscrmuser;
--ALTER TABLE companysize
--  OWNER TO grasscrmuser;  

CREATE TABLE currency
(
  id integer NOT NULL,
  name character varying(255) NOT NULL,
  code character varying(255),
  rate double precision,
  symbol character varying(255),
  status character varying(255),
  CONSTRAINT currency_pkey PRIMARY KEY (id )
);
GRANT ALTER ON currency TO grasscrmuser;
--ALTER TABLE currency
 -- OWNER TO grasscrmuser;

CREATE TABLE documentcategory
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT documentcategory_pkey PRIMARY KEY (id )
);
GRANT ALTER ON documentcategory TO grasscrmuser;
--ALTER TABLE documentcategory
 -- OWNER TO grasscrmuser;
  
CREATE TABLE documentstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT documentstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON documentstatus TO grasscrmuser;
--ALTER TABLE documentstatus
 -- OWNER TO grasscrmuser;

CREATE TABLE documentsubcategory
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT documentsubcategory_pkey PRIMARY KEY (id )
);
GRANT ALTER ON documentsubcategory TO grasscrmuser;
--ALTER TABLE documentsubcategory
--  OWNER TO grasscrmuser;

CREATE TABLE documenttype
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT documenttype_pkey PRIMARY KEY (id )
);
GRANT ALTER ON documenttype TO grasscrmuser;
--ALTER TABLE documenttype
--  OWNER TO grasscrmuser;
  
CREATE TABLE industry
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT industry_pkey PRIMARY KEY (id )
);
GRANT ALTER ON industry TO grasscrmuser;
--ALTER TABLE industry
 -- OWNER TO grasscrmuser;
  
CREATE TABLE leadsource
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT leadsource_pkey PRIMARY KEY (id )
);
GRANT ALTER ON leadsource TO grasscrmuser;
--ALTER TABLE leadsource
--  OWNER TO grasscrmuser;
  
CREATE TABLE leadstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT leadstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON leadstatus TO grasscrmuser;
--ALTER TABLE leadstatus
 -- OWNER TO grasscrmuser;

CREATE TABLE meetingstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT meetingstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON meetingstatus TO grasscrmuser;
--ALTER TABLE meetingstatus
 -- OWNER TO grasscrmuser;
  
CREATE TABLE opportunitytype
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT opportunitytype_pkey PRIMARY KEY (id )
);
GRANT ALTER ON opportunitytype TO grasscrmuser;
--ALTER TABLE opportunitytype
 -- OWNER TO grasscrmuser;

CREATE TABLE religious
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT religious_pkey PRIMARY KEY (id )
);
GRANT ALTER ON religious TO grasscrmuser;
--ALTER TABLE religious
--  OWNER TO grasscrmuser;

CREATE TABLE reminderoption
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT reminderoption_pkey PRIMARY KEY (id )
);
GRANT ALTER ON reminderoption TO grasscrmuser;
--ALTER TABLE reminderoption
--  OWNER TO grasscrmuser;
  
CREATE TABLE salutation
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT salutation_pkey PRIMARY KEY (id )
);
GRANT ALTER ON salutation TO grasscrmuser;
--ALTER TABLE salutation
--OWNER TO grasscrmuser; 
    
CREATE TABLE userstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT userstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON userstatus TO grasscrmuser;
--ALTER TABLE userstatus
 -- OWNER TO grasscrmuser; 
  
CREATE TABLE users
(
  id integer NOT NULL,
  name character varying(255) NOT NULL,
  first_name character varying(255),
  last_name character varying(255),
  status integer,
  password character varying(255),
  title character varying(255),
  email character varying(255),
  mobile character varying(255),
  phone character varying(255),
  fax character varying(255),
  department character varying(255),
  report_to integer,
  mail_street character varying(255),
  mail_city character varying(255),
  mail_state character varying(255),
  mail_postal_code character varying(255),
  mail_country character varying(255),
  other_street character varying(255),
  other_state character varying(255),
  other_postal_code character varying(255),
  other_country character varying(255),
  age integer,
  smtp_username character varying(255),
  smtp_password character varying(255),
  description character varying(255),
  created_by integer,
  updated_by integer,
  -- created_on timestamp without time zone,
  created_on datetime,
  -- updated_on timestamp without time zone,
  updated_on datetime,
  owner integer,
  CONSTRAINT users_pkey PRIMARY KEY (id ),
  CONSTRAINT fk6a68e084c37dd59 FOREIGN KEY (created_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk6a68e085e111c0f FOREIGN KEY (status)
      REFERENCES userstatus (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk6a68e08e584d5b1 FOREIGN KEY (report_to)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk6a68e08e826fe FOREIGN KEY (owner)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk6a68e08e8f7c6a6 FOREIGN KEY (updated_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
GRANT ALTER ON users TO grasscrmuser;
--ALTER TABLE users
--  OWNER TO grasscrmuser;
    
CREATE TABLE role
(
  id integer NOT NULL,
  name character varying(50) NOT NULL,
  sequence integer,
  created_by integer,
  updated_by integer,
  -- created_on timestamp without time zone,
  created_on datetime,
  -- updated_on timestamp without time zone,
  updated_on datetime,
  description character varying(255),
  owner integer,
  scope_account integer,
  view_account integer,
  create_account integer,
  update_account integer,
  delete_account integer,
  scope_call integer,
  view_call integer,
  create_call integer,
  update_call integer,
  delete_call integer,
  scope_campaign integer,
  view_campaign integer,
  create_campaign integer,
  update_campaign integer,
  delete_campaign integer,
  scope_case integer,
  view_case integer,
  create_case integer,
  update_case integer,
  delete_case integer,
  scope_contact integer,
  view_contact integer,
  create_contact integer,
  update_contact integer,
  delete_contact integer,
  scope_document integer,
  view_document integer,
  create_document integer,
  update_document integer,
  delete_document integer,
  scope_lead integer,
  view_lead integer,
  create_lead integer,
  update_lead integer,
  delete_lead integer,
  scope_meeting integer,
  view_meeting integer,
  create_meeting integer,
  update_meeting integer,
  delete_meeting integer,
  scope_opportunity integer,
  view_opportunity integer,
  create_opportunity integer,
  update_opportunity integer,
  delete_opportunity integer,
  scope_target integer,
  view_target integer,
  create_target integer,
  update_target integer,
  delete_target integer,
  scope_targetlist integer,
  view_targetlist integer,
  create_targetlist integer,
  update_targetlist integer,
  delete_targetlist integer,
  scope_task integer,
  view_task integer,
  create_task integer,
  update_task integer,
  delete_task integer,
  scope_system integer,
  view_system integer,
  create_system integer,
  update_system integer,
  delete_system integer,
  CONSTRAINT role_pkey PRIMARY KEY (id ),
  CONSTRAINT fk3580764c37dd59 FOREIGN KEY (created_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk358076e826fe FOREIGN KEY (owner)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk358076e8f7c6a6 FOREIGN KEY (updated_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
GRANT ALTER ON role TO grasscrmuser;
--ALTER TABLE role
 -- OWNER TO grasscrmuser;
  
CREATE TABLE salesstage
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT salesstage_pkey PRIMARY KEY (id )
);
GRANT ALTER ON salesstage TO grasscrmuser;
--ALTER TABLE salesstage
--OWNER TO grasscrmuser;

CREATE TABLE taskpriority
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT taskpriority_pkey PRIMARY KEY (id )
);
GRANT ALTER ON taskpriority TO grasscrmuser;
--ALTER TABLE taskpriority
--  OWNER TO grasscrmuser;
  
CREATE TABLE taskstatus
(
  id integer NOT NULL,
  value character varying(50) NOT NULL,
  label_en_us character varying(50),
  label_zh_cn character varying(50),
  sequence integer,
  CONSTRAINT taskstatus_pkey PRIMARY KEY (id )
);
GRANT ALTER ON taskstatus TO grasscrmuser;
--ALTER TABLE taskstatus
--  OWNER TO grasscrmuser;
    
CREATE TABLE users_role
(
  user_id integer NOT NULL,
  role_id integer NOT NULL,
  CONSTRAINT users_role_pkey PRIMARY KEY (user_id , role_id ),
  CONSTRAINT fk9459304d4ca45e7a FOREIGN KEY (role_id)
      REFERENCES role (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk9459304df1cf225a FOREIGN KEY (user_id)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
GRANT ALTER ON users_role TO grasscrmuser;
--ALTER TABLE users_role
--OWNER TO grasscrmuser;
   
CREATE TABLE emailtemplate
(
  id integer NOT NULL,
  name character varying(255) NOT NULL,
  type character varying(255),
  description character varying(255),
  notes character varying(255),
  subject character varying(255),
  text_only boolean,
  html_body character varying(20000),
  assigned_to integer,
  owner integer,
  created_by integer,
  updated_by integer,
 -- created_on timestamp without time zone,
  created_on datetime,
  -- updated_on timestamp without time zone,
  updated_on datetime,
  content character varying(255),
  text_body character varying(20000),
  CONSTRAINT emailtemplate_pkey PRIMARY KEY (id ),
  CONSTRAINT fk3f1020364c37dd59 FOREIGN KEY (created_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk3f10203662681ed7 FOREIGN KEY (assigned_to)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk3f102036e826fe FOREIGN KEY (owner)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk3f102036e8f7c6a6 FOREIGN KEY (updated_by)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
GRANT ALTER ON emailtemplate TO grasscrmuser;
--ALTER TABLE emailtemplate
--OWNER TO grasscrmuser;  
  
INSERT INTO userstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Active', 'Active', 'å?¯ç�?¨',1);
INSERT INTO userstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Inactive', 'Inactive','å?œç�?¨',2);

INSERT INTO users(id, name,password,status) VALUES (nextval('hibernate_sequence'),'admin','f23434d100b958477670c0c4593f69b5',currval('hibernate_sequence') - 2);

INSERT INTO role(id, name, sequence,scope_account, view_account, create_account, 
            update_account, delete_account, scope_call, view_call, 
            create_call, update_call, delete_call, scope_campaign, view_campaign, 
            create_campaign, update_campaign, delete_campaign, scope_case, 
            view_case, create_case, update_case, delete_case, scope_contact, 
            view_contact, create_contact, update_contact, delete_contact, 
            scope_document, view_document, create_document, update_document, 
            delete_document, scope_lead, view_lead, create_lead, update_lead, 
            delete_lead, scope_meeting, view_meeting, create_meeting, update_meeting, 
            delete_meeting, scope_opportunity, view_opportunity, create_opportunity, 
            update_opportunity, delete_opportunity, scope_target, view_target, 
            create_target, update_target, delete_target, scope_targetlist, 
            view_targetlist, create_targetlist, update_targetlist, delete_targetlist, 
            scope_task, view_task, create_task, update_task, delete_task, scope_system, view_system, create_system, update_system, delete_system) VALUES (nextval('hibernate_sequence'),'Administrator', 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
            1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);

INSERT INTO users_role(user_id, role_id) VALUES (currval('hibernate_sequence') - 1 ,currval('hibernate_sequence'));  -- ISSUE 
 
--INSERT INTO users_role(user_id, role_id) VALUES (3 ,4);
  
INSERT INTO accountlevel(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--','--None--','--ç©ºç™½--',1);
INSERT INTO accountlevel(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'VIP Account','VIP Account','VIP å®¢æˆ·',2);
INSERT INTO accountlevel(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Major Account','Major Account','ä¸»è¦?å®¢æˆ·',3);
INSERT INTO accountlevel(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Common Account','Common Account','æ™®é€šå®¢æˆ·',4);
INSERT INTO accountlevel(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Small Account','Small Account','å°?å®¢æˆ·',5);  
  
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--','--None--','--ç©ºç™½--',1);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'State-Owned','State-Owned','å›½æœ‰',2);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Forgign','Forgign','å¤–èµ„',3);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Joint Venture','Joint Venture','å?ˆèµ„',4);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Private','Private','æ°‘è?¥',5);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Collectively-Run','Collectively-Run','é›†ä½“',6);
INSERT INTO accountnature(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Other','Other','å…¶å®ƒ',7);
          
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--','--ç©ºç™½--',1);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Analyst', 'Analyst','åˆ†æž?è€…',2);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Competitor', 'Competitor','ç«žäº‰è€…',3);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Customer', 'Customer','å®¢æˆ·',4);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Integrator', 'Integrator','æ•´å?ˆè€…',5);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Investor', 'Investor','æŠ•èµ„è€…',6);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Partner', 'Partner','å?ˆä½œè€…',7);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Press', 'Press','å‡ºç‰ˆå•†',8);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Prospect', 'Prospect','é�?€å�?®å‰?æ™¯',9);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Reseller', 'Reseller','æ‰¹å?‘å•†',10);
INSERT INTO accounttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Other', 'Other','å…¶å®ƒ',11);

INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--','--None--','--ç©ºç™½--', 1);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10~100 thousand','10~100 thousand','1~10ä¸‡', 2);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'100~1000 thousand','100~1000 thousand','10~100ä¸‡', 3);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1~5 million','1~5 million','100~500ä¸‡', 4);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'5~10 million','5~10 million','500~1000ä¸‡', 5);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10~50 million','10~50 million','1000~5000ä¸‡', 6);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'50~100 million','50~100 million','5000ä¸‡~1äº¿', 7);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'100 million~1 billion','100 million~1 billion','1~10äº¿', 8);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1~10 billion','1~10 billion','10~100äº¿', 9);
INSERT INTO annualrevenue(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'>10 billion','>10 billion','100äº¿ä»¥ä¸Š', 10);
        
INSERT INTO calldirection(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Inbound', 'Inbound', 'æ‰“å…¥', 1);
INSERT INTO calldirection(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Outbound', 'Outbound', 'æ‰“å‡º', 2);

INSERT INTO callstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Planned', 'Planned', 'å·²è®¡åˆ’', 1);
INSERT INTO callstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Held', 'Held', 'å®Œæˆ?', 2);
INSERT INTO callstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Not Held', 'Not Held', 'æœªå¼€å§‹', 3);

INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Planning', 'Planning', 'è®¡åˆ’ä¸­', 2);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Active', 'Active', 'å?¯ç�?¨', 3);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Inactive', 'Inactive', 'å?œç�?¨', 4);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Complete', 'Complete', 'å®Œæˆ?', 5);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'In Queue', 'In Queue', 'é˜Ÿåˆ—ä¸­', 6);
INSERT INTO campaignstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Sending', 'Sending', 'å?‘é€?ä¸­', 7);

INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Telesales', 'Telesales', 'ç�?µè¯?é�?€å�?®', 2);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Mail', 'Mail', 'é‚®ä»¶', 3);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Email', 'Email', 'ç�?µå­?é‚®ä»¶', 4);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Print', 'Print', 'åˆ—å?°', 5);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Web', 'Web', 'ç½‘ç»œ', 6);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Radio', 'Radio', 'å¹¿æ’­', 7);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Television', 'Television', 'ç�?µè§†', 8);
INSERT INTO campaigntype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'NewsLetter', 'NewsLetter', 'ç®€è®¯', 9);

INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--','--None--','--ç©ºç™½--',1);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10~100 thousand','10~100 thousand','1~10ä¸‡',2);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'100~1000 thousand','100~1000 thousand','10~100ä¸‡',3);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1~5 million','1~5 million','100~500ä¸‡',4);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'5~10 million','5~10 million','500~1000ä¸‡',5);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10~50 million','10~50 million','1000~5000ä¸‡',6);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'50~100 million','50~100 million','5000ä¸‡~1äº¿',7);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'100 million~1 billion','100 million~1 billion','1~10äº¿',8);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1~10 billion','1~10 billion','10~100äº¿',9);
INSERT INTO capital(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'>10 billion','>10 billion','100äº¿ä»¥ä¸Š',10);
        
INSERT INTO caseorigin(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO caseorigin(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Email', 'Email', 'ç�?µå­?é‚®ä»¶', 2);
INSERT INTO caseorigin(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Phone', 'Phone', 'ç�?µè¯?', 3);
INSERT INTO caseorigin(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Web', 'Web', 'ç½‘ç»œ', 4);

INSERT INTO casepriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'High', 'High', 'é«˜', 1);
INSERT INTO casepriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Medium', 'Medium', 'ä¸­', 2);
INSERT INTO casepriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Low', 'Low', 'ä½Ž', 3);

INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'User did not attend training', 'User did not attend training', 'ç�?¨æˆ·æœªå?‚åŠ åŸ¹è®­', 2);
INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Complex functionality', 'Complex functionality', 'åŠŸèƒ½å¤?æ?‚', 3);
INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Existing problem', 'Existing problem', 'å·²æœ‰é—®é¢˜', 4);
INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Instructions not clear', 'Instructions not clear', 'æŒ‡ä»¤ä¸?æ¸…æ¥š', 5);
INSERT INTO casereason(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'New problem', 'New problem','æ–°é—®é¢˜', 6);

INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'New', 'New', 'æ–°å¢ž', 1);
INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Assigned', 'Assigned', 'å·²åˆ†é…?', 2);
INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Closed', 'Closed', 'ç»“æ?Ÿ', 3);
INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Pending Input', 'Pending Input', 'ç­‰å¾…è¾“å…¥', 4);
INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Rejected', 'Rejected', 'æ‹’ç»?', 5);
INSERT INTO casestatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Duplicate', 'Duplicate', 'é‡?å¤?', 6);

INSERT INTO casetype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Administration', 'Administration', 'ç®¡ç?†å‘˜', 1);
INSERT INTO casetype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Product', 'Product', 'äº§å“?', 2);
INSERT INTO casetype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'User', 'User', 'ç�?¨æˆ·', 3);

INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--','--None--','--ç©ºç™½--', 1);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1~10 Person','1~10 Person','1~10äºº', 2);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10~50 Person','10~50 Person','10~50äºº', 3);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'50~100 Person','50~100 Person','50~100äºº', 4);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'100~1000 Person','100~1000 Person','100~1000äºº', 5);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1000~3000 Person','1000~3000 Person','1000~3000äºº', 6);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'3000~10000 Person','3000~10000 Person','3000~10000äºº', 7);
INSERT INTO companysize(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'>10000 Person','>10000 Person','10000ä»¥ä¸Š', 8);
        
INSERT INTO currency(id, name, code, symbol) VALUES (nextval('hibernate_sequence'),'US Dollars','USD', '$');
INSERT INTO currency(id, name, code, symbol) VALUES (nextval('hibernate_sequence'),'RMB','RMB', 'ï¿¥');
INSERT INTO currency(id, name, code, symbol) VALUES (nextval('hibernate_sequence'),'EURO','EURO', 'â‚¬');
INSERT INTO currency(id, name, code, symbol) VALUES (nextval('hibernate_sequence'),'JPY','JPY', 'ï¿¥');

INSERT INTO documentcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO documentcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Marketing', 'Marketing', 'å¸‚åœº', 2);
INSERT INTO documentcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Knowledge Base', 'Knowledge Base', 'çŸ¥è¯†åº“', 3);
INSERT INTO documentcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Sales', 'Sales', 'é�?€å�?®', 4);

INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Active', 'Active', 'å?¯ç�?¨', 1);
INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Draft', 'Draft', 'è?‰ç¨¿', 2);
INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'FAQ', 'FAQ', 'å¸¸è§?é—®é¢˜', 3);
INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Expired', 'Expired', 'è¿‡æœŸ', 4);
INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Under Review', 'Under Review', 'å®¡æŸ¥ä¸­', 5);
INSERT INTO documentstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Pending', 'Pending', 'å¾…å®š', 6);

INSERT INTO documentsubcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO documentsubcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Marketing Collateral', 'Marketing Collateral', 'å¸‚åœºè?¥é�?€', 2);
INSERT INTO documentsubcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Product Brochures', 'Product Brochures', 'äº§å“?æ‰‹å†Œ', 3);
INSERT INTO documentsubcategory(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'FAQ', 'FAQ', 'å¸¸è§?é—®é¢˜', 4);

INSERT INTO documenttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO documenttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Mail Merge', 'Mail Merge', 'é‚®ä»¶å?ˆå¹¶', 2);
INSERT INTO documenttype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'License Agreement', 'License Agreement', 'è®¸å?¯è¯?å??è®®', 3);

INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Agriculture', 'Agriculture', 'å†œä¸š', 2);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Apparel', 'Apparel', 'æœ?è£…', 3);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Banking', 'Banking', 'é“¶è¡Œ', 4);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Biotechnology', 'Biotechnology', 'ç�?Ÿç‰©æŠ€æœ¯', 5);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Chemicals', 'Chemicals', 'åŒ–å·¥', 6);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Communications', 'Communications', 'é€šè®¯', 7);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Construction', 'Construction', 'å»ºç­‘', 8);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Consulting', 'Consulting', 'å’¨è¯¢', 9);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Education', 'Education', 'æ•™è‚²', 10);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Electronics', 'Electronics', 'ç�?µå­?', 11);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Energy', 'Energy', 'èƒ½æº?', 12);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Engineering', 'Engineering', 'å·¥ç¨‹è®¾è®¡', 13);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Entertainment', 'Entertainment', 'å¨±ä¹?', 14);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Environmental', 'Environmental', 'çŽ¯å¢ƒä¿?æŠ¤', 15);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Finance', 'Finance', 'é‡‘èž?', 16);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Government', 'Government', 'æ�?¿åºœæœºæž„', 17);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Healthcare', 'Healthcare', 'å?«ç�?Ÿä¿?å?¥', 18);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Hospitality', 'Hospitality', 'åŒ»ç–—æœºæž„', 19);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Insurance', 'Insurance', 'ä¿?é™©', 20);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Machinery', 'Machinery', 'æœºæ¢°', 21);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Manufacturing', 'Manufacturing', 'ç�?Ÿäº§ä¼?ä¸š', 22);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Media', 'Media', 'åŒ»é™¢', 23);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Not For Profit', 'Not For Profit', 'é?žç›ˆåˆ©æœºæž„', 24);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Recreation', 'Recreation', 'å¨±ä¹?', 25);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Retail', 'Retail', 'é›¶å�?®', 26);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Shipping', 'Shipping', 'æµ·è¿?', 27);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Technology', 'Technology', 'æŠ€æœ¯', 28);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Telecommunications', 'Telecommunications', 'ç�?µè®¯', 29);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Transportation', 'Transportation', 'è¿?è¾“', 30);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Utilities', 'Utilities', 'å…¬å…±äº‹ä¸š', 31);
INSERT INTO industry(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Other', 'Other', 'å…¶å®ƒ', 32);

INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Cold Call', 'Cold Call', 'æ„?å¤–æ?¥è®¿', 2);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Existing Customer', 'Existing Customer', 'çŽ°æœ‰å®¢æˆ·', 3);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Self Generated', 'Self Generated', 'è‡ªäº§', 4);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Employee', 'Employee', 'å‘˜å·¥', 5);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Partner', 'Partner', 'å?ˆä½œè€…', 6);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Public Relations', 'Public Relations', 'å…¬å…±å…³ç³»', 7);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Direct Mail', 'Direct Mail', 'ç›´é‚®', 8);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Conference', 'Conference', 'ä¼šè®®', 9);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Trade Show', 'Trade Show', 'å±•è§ˆ', 10);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Web Site', 'Web Site', 'ç½‘ç«™', 11);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Word of mouth', 'Word of mouth', 'ä»–äººä»‹ç»?', 12);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Email', 'Email', 'ç�?µå­?é‚®ä»¶', 13);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Campaign', 'Campaign', 'å¸‚åœºæ´»åŠ¨', 14);
INSERT INTO leadsource(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Other', 'Other', 'å…¶å®ƒ', 15);

INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'New', 'New', 'æ–°å¢ž', 2);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Assigned', 'Assigned', 'å·²åˆ†é…?', 3);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'In Process', 'In Process', 'å¤„ç?†ä¸­', 4);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Converted', 'Converted', 'å·²è½¬æ?¢', 5);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Recycled', 'Recycled', 'å·²é‡?å¤?', 6);
INSERT INTO leadstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Dead', 'Dead', 'ç»ˆæ­¢', 7);

INSERT INTO meetingstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Planned', 'Planned', 'å·²è®¡åˆ’', 1);
INSERT INTO meetingstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Held', 'Held', 'å®Œæˆ?', 2);
INSERT INTO meetingstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Not Held', 'Not Held', 'æœªå¼€å§‹', 3);

INSERT INTO opportunitytype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO opportunitytype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Existing Business', 'Existing Business', 'å·²æœ‰ç�?Ÿæ„?', 2);
INSERT INTO opportunitytype(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'New Business', 'New Business', 'æ–°ç�?Ÿæ„?', 3);

INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--',1);
INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Buddhism', 'Buddhism', 'ä½›æ•™',2);
INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Christianity', 'Christianity', 'åŸºç?£æ•™',3);
INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Islam ', 'Islam ', 'ä¼Šæ–¯å…°æ•™',4);
INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Taoism', 'Taoism', 'é?“æ•™',5);
INSERT INTO religious(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Other', 'Other', 'å…¶å®ƒ',6);

INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'10', '10 minutes prior', 'æ??å‰?10åˆ†é’Ÿ', 1);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'15', '15 minutes prior', 'æ??å‰?15åˆ†é’Ÿ', 2);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'30', '30 minutes prior', 'æ??å‰?30åˆ†é’Ÿ', 3);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'60', '1 hour prior', 'æ??å‰?1å°?æ—¶', 4);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'120', '2 hours prior', 'æ??å‰?2å°?æ—¶', 5);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'180', '3 hours prior', 'æ??å‰?3å°?æ—¶', 6);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'300', '5 hours prior', 'æ??å‰?5å°?æ—¶', 7);
INSERT INTO reminderoption(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'1440', '1 day prior', 'æ??å‰?1å¤©', 8);

INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Prospecting', 'Prospecting', 'é�?€å�?®å‰?æ™¯', 2);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Qualification', 'Qualification', 'èµ„æ ¼å?ˆæ ¼', 3);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Needs Analysis', 'Needs Analysis', 'éœ€è¦?åˆ†æž?', 4);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Value Proposition', 'Value Proposition', 'ä»·å€¼é™ˆè¿°', 5);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Id. Decision Makers', 'Id. Decision Makers', 'åˆ¤å†³å†³ç­–è€…', 6);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Perception Analysis', 'Perception Analysis', 'æ„Ÿè§‰åˆ†æž?', 7);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Proposal/Price Quote', 'Proposal/Price Quote', 'å»ºè®®/å‡ºä»·', 8);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Negotiation/Review', 'Negotiation/Review', 'è°ˆåˆ¤/å›žé¡¾', 9);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Closed Won', 'Closed Won', 'è°ˆæˆ?ç»“æ?Ÿ', 10);
INSERT INTO salesstage(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Closed Lost', 'Closed Lost', 'ä¸¢å?•ç»“æ?Ÿ', 11);

INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'--None--', '--None--', '--ç©ºç™½--', 1);
INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Mr.', 'Mr.', 'å…ˆç�?Ÿ', 2);
INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Ms.', 'Ms.', 'å¥³å£«', 3);
INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Mrs.', 'Mrs.', 'å¤«äºº', 4);
INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Dr.', 'Dr.', 'å?šå£«', 5);
INSERT INTO salutation(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Prof.', 'Prof.', 'æ•™æŽˆ', 6);

INSERT INTO taskpriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'High', 'High', 'é«˜', 1);
INSERT INTO taskpriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Medium', 'Medium', 'ä¸­', 2);
INSERT INTO taskpriority(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Low', 'Low', 'ä½Ž', 3);

INSERT INTO taskstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Not Started', 'Not Started', 'æœªå¼€å§‹', 1);
INSERT INTO taskstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'In Progress', 'In Progress', 'å¤„ç?†ä¸­', 2);
INSERT INTO taskstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Completed', 'Completed', 'å®Œæˆ?', 3);
INSERT INTO taskstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Pending Input', 'Pending Input', 'ç­‰å¾…è¾“å…¥', 4);
INSERT INTO taskstatus(id, value, label_en_us, label_zh_cn, sequence) VALUES (nextval('hibernate_sequence'),'Deferred', 'Deferred', 'å»¶æœŸ', 5);

update users set created_by=3,owner=3,created_on=now();
update role set created_by=3,owner=3,created_on=now();

INSERT INTO emailtemplate(id, name, type, subject, text_only, html_body) VALUES (nextval('hibernate_sequence'),'Default Meeting Remind Email Template', 'meetingRemind','Meeting Remind', false, '<p>Subject:$meeting.subject</p><p>Sart Date:$meeting.start_date</p><p>Location:$meeting.location</p>');
INSERT INTO emailtemplate(id, name, type, subject, text_only, html_body) VALUES (nextval('hibernate_sequence'),'Default Call Remind Email Template', 'callRemind','Call Remind', false, '<p>Subject:$call.subject</p><p>Sart Date:$call.start_date</p>');
INSERT INTO emailtemplate(id, name, type, subject, text_only, html_body) VALUES (nextval('hibernate_sequence'),'Default Meeting Invite Email Template', 'meetingInvite','Meeting Invite', false, '<p>Subject:$meeting.subject</p><p>Sart Date:$meeting.start_date</p><p>Location:$meeting.location</p>');
INSERT INTO emailtemplate(id, name, type, subject, text_only, html_body) VALUES (nextval('hibernate_sequence'),'Default Call Invite Email Template', 'callInvite','Call Invite', false, '<p>Subject:$call.subject</p><p>Sart Date:$call.start_date</p>');


