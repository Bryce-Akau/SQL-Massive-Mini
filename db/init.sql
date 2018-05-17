drop table if exists heroes;

create table heroes (
    id serial primary key,
    name text,
    powers text,
    age integer,
    secret_identity text,
    picture text
);


insert into heroes(name, powers, age, secret_identity, picture) values ('Paul Batman', 'riching, smarting', 30, 'Not Paul', 'https://static.kino.de/wp-content/uploads/2017/04/Batman-Schauspieler-rcm672x0u.jpg');

insert into heroes(name, powers, age, secret_identity, picture) values ('Deadpool', 'x-ray vision', 500, 'Livepool', 'http://www.safra.sg/~/media/Images/Featured%20Reads/6%20Superheroes%20New%20Year%20Resolutions%202016%20edition/superheroes-obese-img.ashx');

insert into heroes(name, powers, age, secret_identity, picture) values ('IronMan', 'shoots beams, flies, sarcastic', 45, 'has none', 'http://i.imgur.com/3qT25yM.jpg');


select * from heroes;