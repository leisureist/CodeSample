declare @a table(name sysname, row integer, recevered varchar(20), data varchar(20),index_size varchar(20),unused varchar(20));
insert into @a exec sys.sp_MSforeachtable "sys.sp_spaceused '?'";
select * from @a order by row desc;
