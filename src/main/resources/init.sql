create table `product` (
	id bigint not null auto_increment,
    name varchar(200) not null,
    description varchar(255) not null,
    category varchar(200) not null,
    price float(10,2) not null,
    quantity int,
    primary key (id)
);