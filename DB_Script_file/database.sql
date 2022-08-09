Hibernate: 
    
    drop table accountdetails cascade constraints;
Hibernate: 
    
    drop table transactiondetails cascade constraints;
Hibernate: 
    
    drop sequence accountdetails_seq;
Hibernate: 
    
    drop sequence transaction_seq;
Hibernate: create sequence accountdetails_seq start with 1 increment by  1;
Hibernate: create sequence transaction_seq start with 1 increment by  1;
Hibernate: 
    
    create table accountdetails (
       user_id number(19,0) not null,
        aadhar_no number(19,0) not null,
        account_no number(19,0) not null,
        account_type varchar2(30 char) not null,
        address varchar2(200 char) not null,
        balance double precision not null,
        city varchar2(60 char) not null,
        date_of_birth date,
        email varchar2(70 char) not null,
        first_name varchar2(60 char) not null,
        gender varchar2(20 char) not null,
        last_name varchar2(60 char) not null,
        pan_no varchar2(20 char) not null,
        password varchar2(60 char) not null,
        phone number(19,0) not null,
        pin_code number(10,0) not null,
        state varchar2(60 char) not null,
        user_name varchar2(60 char),
        primary key (user_id)
    );
Hibernate: 
    
    create table transactiondetails (
       transaction_id number(19,0) not null,
        amount double precision not null,
        source_account number(19,0) not null,
        source_account_type varchar2(30 char) not null,
        target_account number(19,0) not null,
        target_account_type varchar2(30 char) not null,
        total_balance double precision not null,
        transfer_date date,
        transfer_time date,
        transfer_type varchar2(30 char) not null,
        user_id number(19,0),
        primary key (transaction_id)
    );
Hibernate: 
    
    alter table accountdetails 
       add constraint UK_aj2jofk4n9r7s1keoug1qywe5 unique (account_no);
Hibernate: 
    
    alter table accountdetails 
       add constraint UK_ooyk4nf24bdd9y885nen088by unique (email);
Hibernate: 
    
    alter table accountdetails 
       add constraint UK_5uux93c9kcis39d5tw0757j3d unique (phone);
Hibernate: 
    
    alter table transactiondetails 
       add constraint FKq33jxtljrwbfb47t0d5h43knm 
       foreign key (user_id) 
       references accountdetails;


