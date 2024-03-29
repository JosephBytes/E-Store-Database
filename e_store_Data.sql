drop database if exists e_store;
create database e_store;
use e_store;
drop table if exists products;
drop table if exists reviews;

create table products (
  id int(3) unsigned NOT NULL AUTO_INCREMENT, /* unsigned means only positive numbers, max 3 digit integers*/
  name varchar(255) NOT NULL,
  price float(8,2) NOT NULL DEFAULT '0.00',
  stock int(3) unsigned NOT NULL DEFAULT '0',
  created_at datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

insert into products values (1, 'Tablet'		, 145.50 , 8, '2015-10-09 00:49:30'),
			    (2, 'Smartphone'		, 90.80  , 9, '2015-10-28 04:43:05'),
                            (3, 'PC'		   	, 157.40 , 1, '2015-10-10 18:13:09'),
                            (4, 'Headphones'		, 20.00  , 6, '2015-10-30 06:30:30'),
                            (5, 'Speakers'		, 56.89  , 4, '2015-10-27 12:24:56'),
                            (6, 'Monitor'		, 125.45 , 7, '2015-10-22 11:32:53');

create table reviews (
  id int(3) unsigned not null auto_increment,
  product_id int(3) unsigned not null,
  stars tinyint(1) unsigned not null default'1',
  primary key (id, product_id),
  foreign key(product_id) references products (id)
) engine=InnoDB;

insert into reviews values (1, 6, 5),
			   (2, 4, 2),
                           (3, 2, 1),
                           (4, 4, 5),
                           (5, 1, 5),
                           (6, 2, 4),
                           (7, 3, 3),
                           (8, 2, 2),
                           (9, 1, 3);
