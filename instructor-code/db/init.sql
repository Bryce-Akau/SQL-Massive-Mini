drop table if exists heroes;

create table if not exists heroes (
  id serial primary key,
  name text,
  powers text,
  age int,
  secret_identity text,
  picture text
);

insert into heroes (name, powers, age, secret_identity, picture) values ('Paul Batman', 'riching, smarting', 30, 'Not Paul', 'https://static.kino.de/wp-content/uploads/2017/04/Batman-Schauspieler-rcm672x0u.jpg');
insert into heroes (name, powers, age, secret_identity, picture) values ('Deadpool', 'x-ray vision', 500, 'Livepool', 'http://www.safra.sg/~/media/Images/Featured%20Reads/6%20Superheroes%20New%20Year%20Resolutions%202016%20edition/superheroes-obese-img.ashx');
INSERT INTO heroes (name, powers, age, secret_identity, picture) values ('Iron Manatee','sinking',30,'Manatee','https://s-media-cache-ak0.pinimg.com/originals/a9/d1/f3/a9d1f3f7d6483a91358a737a7566f493.jpg');
insert into heroes (name, powers, age, secret_identity, picture) values ('Ironman', 'Riching, Smarting', 40, 'Tony Stark', 'http://i.imgur.com/3qT25yM.jpg');
insert into heroes(name, powers, age, secret_identity, picture) values ('The Flash', 'speed',21,'Detective','http://digitalspyuk.cdnds.net/16/41/980x490/landscape-1476280496-the-flash-season-3-poster.jpg');
insert into heroes (name, powers, age, secret_identity, picture) values ('Invisible Man','Invisibilty', 547, 'That Dude', 'https://hollywoodhatesme.files.wordpress.com/2012/07/invisible-man.jpg?winsert');

select * from heroes;
