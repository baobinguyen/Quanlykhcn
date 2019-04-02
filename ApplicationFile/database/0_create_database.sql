use qlkh;
CREATE TABLE CBGV (
  `cbgvid` bigint NOT NULL primary key,
  `hoten` VARCHAR(45) NULL,
  `matkhau` VARCHAR(45) NULL,
  `ngaysinh` VARCHAR(45) NULL,
  `gioitinh` VARCHAR(45) NULL,
  `hocham` VARCHAR(45) NULL,
  `hocvi` VARCHAR(45) NULL,
  `namduocphong` DATETIME NULL,
  `namdathocvi` DATETIME NULL,
  `chucdanhnc` VARCHAR(45) NULL,
  `dienthoaiNR` VARCHAR(45) NULL,
  `CQ` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `linhvucchuyenmonsau` VARCHAR(45) NULL,
  createddate timestamp null
  );
  create table role	(
	roleid bigint not null primary key,
    name varchar(100) null
    )

    use qlkh

alter table cbgv add column roleid bigint;
alter table cbgv add constraint fk_cbgv_role foreign key (roleid) references role(roleid);