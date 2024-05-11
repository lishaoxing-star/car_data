create external table tmp_code_full
(
    `type`               string comment '编码类型',
    `code_id`          string comment '编码ID',
`code_name`             string comment '编码名称'
) comment '日志编码维度表'
row format delimited
fields terminated by '\t'
location '/warehouse/car_data/tmp/tmp_code_full';

-- 之后把car_data_code.txt文件放入到临时表的路径中。

insert into table dim_code_full select * from tmp_code_full;