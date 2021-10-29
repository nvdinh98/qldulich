create database quanlydulich;
use quanlydulich;

create table tour
(
    idTour  int auto_increment not null primary key,
    maTour  varchar(50)        not null,
    tenLoai varchar(50)        not null
);
select *
from quanlydulich.tour;
insert into quanlydulich.tour (maTour, tenLoai)
values ('a1', 'vip'),
       ('a2', 'vip'),
       ('a3', 'super vip');


create table thanhPho
(
    idCity   int auto_increment not null primary key,
    nameCity varchar(50)        not null

);
select *
from quanlydulich.thanhPho;
insert into quanlydulich.thanhPho (nameCity)
values ('ha noi'),
       ('nha trang'),
       ('ha long'),
       ('phong nha ke bang'),
       ('sa pa');
create table diemdendulich
(
    idDiemden   int auto_increment not null,
    nameDiemden varchar(50)        not null,
    moTa        varchar(500)       not null,
    avgPrice    varchar(50)        not null,
    idCity      int,
    primary key (idDiemden),
    foreign key (idCity) references thanhPho (idCity)
);
select *
from quanlydulich.diemdendulich;
insert into quanlydulich.diemdendulich (nameDiemden, moTa, avgPrice, idCity)
values ('ha noi', 'phong hoa trang le', '50000$', 1),
       ('nha trang', 'bien dep', '40000$', 2),
       ('ha long', 'hai san ngon', '80000$', 3),
       ('phong nha ke bang', 'hoang so ,dep ', '30000$', 4),
       ('sapa', 'dep nhu bac au', '50000$', 5);

create table tourTable
(
    idTourTable   int auto_increment not null primary key,
    maTour        varchar(50)        not null,
    idTour        int,
    giaDiemDen    varchar(50)        not null,
    startDayTour  date,
    finishDayTour date,
    foreign key (idTour) references tour (idTour)
);
select *
from quanlydulich.tourTable;
insert into quanlydulich.tourTable (maTour, idTour, giaDiemDen, startDayTour, finishDayTour)
values ('c08', '5000$', '2021-08-09', '2021-09-07'),
       ('c09', '5500$', '2021-10-22', '2021-10-30'),
       ('c010', '4000$', '2021-10-1', '2021-10-16');

insert into quanlydulich.tourTable (maTour, idTour, giaDiemDen, startDayTour, finishDayTour)
values ('c08', 1, '5000$', '2021-08-09', '2021-09-07'),
       ('c09', 2, '5500$', '2021-10-22', '2021-10-30'),
       ('c010', 3, '4000$', '2021-10-1', '2021-10-16');

delete
from quanlydulich.tourTable
where idTourTable in (1, 2, 3);
update quanlydulich.tourTable
set idTourTable = 1
where idTourTable = 4;

create table khachHang
(
    idKhachHang  int auto_increment not null primary key,
    tenKhachHang varchar(50)        not null,
    cmtnd        varchar(50)        not null,
    namSinh      varchar(50),
    idCity       int,

    foreign key (idCity) references thanhPho (idCity)
);
select *
from quanlydulich.khachHang;
insert into khachHang (tenKhachHang, cmtnd, namSinh, idCity)
values ('tieu long', '123123', '20000', 1),
       ('tieu cuong', '234234', '1998', 2),
       ('tieu anh', '456456', '1997', 3),
       ('tieu cau', '567567', '1995', 4),
       ('tieu truong', '789789', '1997', 5);




