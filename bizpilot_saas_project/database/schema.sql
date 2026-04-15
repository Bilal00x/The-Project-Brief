
create table organizations(
id uuid primary key,
name text,
created_at timestamp default now()
);

create table customers(
id uuid primary key,
organization_id uuid,
name text,
email text
);

create table orders(
id uuid primary key,
organization_id uuid,
customer_id uuid,
total numeric
);
