use petcage;
drop table if exists user;
create table if not exists user(
  id int primary key auto_increment comment '自增主键',
  phone varchar(50) comment '手机号',
  open_id varchar(100) comment '微信open_id',
  union_id varchar(100) comment '微信union_id',
  pwd varchar(255) comment '密码',
  user_type varchar(10) comment '用户类型(1普通会员,2周卡会员,3月卡会员,4季卡会员,5年卡会员)',
  balance double comment '钱包余额',
  valid_start_date datetime comment '会员有效开始日期',
  valid_end_date datetime comment '会员有效结束日期',
  token varchar(255) comment '登录access token',
  country varchar(255) comment '国家',
  province varchar(255) comment '省份',
  city varchar(255) comment '城市',
  avatar_url varchar(255) comment '头像url',
  gender varchar(255) comment '性别',
  nick_name varchar(255) comment '昵称',
  language varchar(255) comment '语言',
  birthday varchar(100) comment '出生日期',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '用户表' default charset='utf8'
;
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (1, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '3254316d-62a3-4298-962c-adc2f61204a7', '1', 0, '2020-03-30 00:01:32', '3000-12-31 00:00:00', '69992092-c017-4473-a52f-7c6ff7c24235', '', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/VBoVXlHjV7ooww4icozNUQkohOp304JWEx7Qaeb97JvicMaibgwCbxiaYbceib1XIoT1yFWdOTeIYnzE45cibxp9aEtA/132', '1', '你好世界1124', 'en', NULL, '2020-03-30 00:01:32', NULL);
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (2, NULL, 'ouHZt5Wh0Hfkoc1S1JArPO3D7TvU', NULL, '85ade7c2-784f-47aa-9a49-1f559385ed92', '1', 0, '2020-04-06 23:09:01', '3000-12-31 00:00:00', '3fec2ed2-225a-42e2-a90b-c75ef24c6d8e', 'JP', 'Chiba-ken', 'Abiko-shi', 'https://wx.qlogo.cn/mmopen/vi_32/TPibPtjPTictqCuriaKicG4TvRib8r3PUAQ9F4VEOm3hcSd6JZ4dJsAdG0CZ1W26qDPL4DOGTq9mR0VxQAiax61AS6vg/132', '1', '㍿', 'zh_CN', NULL, '2020-04-06 23:09:01', NULL);
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (3, NULL, 'ouHZt5Ym2TBwU8KCMbX4cBp3PMTw', NULL, 'bebc0ebb-24cf-436b-ab30-832e33e18193', '1', 0, '2020-04-10 08:11:30', '3000-12-31 00:00:00', 'a7083074-dd19-423b-a855-3f07b0b95d9e', '中国', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqrIhRibyIhAddEKt2r1b9AtX8xtUDlLibyeu4jVde8EXZwGKHnIz5j1OG7QiccNIf1d2yTUAQ9nENsQ/132', '1', '小板的八块腹肌', 'zh_CN', NULL, '2020-04-10 08:11:30', NULL);
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (4, NULL, 'ouHZt5YYjK9Lww3auwyuYyibAF-I', NULL, '6648e8f1-66ce-4550-8dca-4f654bbe1f47', '1', 0, '2020-04-11 19:45:29', '3000-12-31 00:00:00', '6a1143f9-951f-4378-b185-cdaf25994b0a', '中国', '海南', '三亚', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELLymdACibbhfrvcrkTOC7PI5SxqnQ5fHXf94Q47gKibcia4rQTIN3kgbLUmzKfQvns0oaaHicXcqsCiaw/132', '1', 'LiHUi', 'zh_CN', NULL, '2020-04-11 19:45:29', NULL);
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (5, NULL, 'ouHZt5SzpR_Sx8uYgvMjIQj2TDkQ', NULL, '0c4fc7f2-e6a2-43c9-b13e-4b291e376e65', '1', 0, '2020-04-13 14:25:31', '3000-12-31 00:00:00', 'd329209a-f147-4767-af14-a2cd891b177a', '中国', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqLibSkDcUmZ4wbvE6Hw7X3qoC2GfgRgTIJWjAzSbbZMeib2VVze9icbxv0glYshH5Qp3iaj3lNgsQMSQ/132', '1', 'rm -rf', 'zh_CN', NULL, '2020-04-13 14:25:31', NULL);
INSERT INTO `petcage`.`user`(`id`, `phone`, `open_id`, `union_id`, `pwd`, `user_type`, `balance`, `valid_start_date`, `valid_end_date`, `token`, `country`, `province`, `city`, `avatar_url`, `gender`, `nick_name`, `language`, `birthday`, `create_time`, `update_time`) VALUES (6, NULL, 'ouHZt5T1IqahjM-W_TNli_FfOjJ8', NULL, '730a3bf0-7eb1-4545-acc3-b73b9a9e5fe6', '1', 0, '2020-04-14 11:02:24', '3000-12-31 00:00:00', '7dbcc71a-8d33-43a8-8614-0d64092275b3', '安道尔', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/ZUrkDSFvpKW8nCT7QxpBtfAd2a3RmKOofX8ueg2ictFicaAibLQDrVRLDzw4PXGpLCvBJ5ibYvQ32LyKOvWoMtNmDg/132', '1', '@', 'zh_CN', NULL, '2020-04-14 11:02:24', '2020-04-19 09:58:27');

drop table if exists petcage_order;
create table if not exists petcage_order(
  id int primary key auto_increment comment '自增主键',
  order_id varchar(100) comment '订单id',
  phone varchar(100) comment '联系人手机号',
  open_id varchar(100) comment '用户open_id',
  is_done bool comment '订单是否完成',
  device_id varchar(250) comment '设备id',
  pet_id varchar(255) comment '宠物id',
  start_time datetime comment '开始时间',
  end_time datetime comment '结束时间',
  amount double comment '订单金额',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '订单表' default charset='utf8'
/*注：用户在扫码开锁时，需先判断改设备是否正在使用中，通过user_id is_done device_id做预判断*/
;
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (3, '49b95886-01fa-820d-0cd9-b43635f1b492', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-03 23:49:23', '2020-04-04 13:20:33', 1, '2020-04-03 23:49:23', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (4, 'a3749995-335e-0b46-3165-62ca12e1e52f', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-04 13:53:02', '2020-04-04 13:55:27', 1, '2020-04-04 13:53:02', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (5, 'bc99e5f4-56aa-77f8-3306-165b1271cdab', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-04 13:57:52', '2020-04-04 13:58:46', 1, '2020-04-04 13:57:52', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (6, '955d3de4-7902-dcf8-86ec-135e5ac5684f', '18271197973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-04 14:09:50', '2020-04-04 14:10:23', 1, '2020-04-04 14:09:50', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (7, 'c564ecc8-e7ec-3dfe-2e65-e4bc0144c837', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '', 1, '2020-04-08 21:21:03', '2020-04-09 20:55:38', 1, '2020-04-08 21:21:03', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (8, '4e51bd3a-3062-cc8a-6e53-a3cc95ea7b2c', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 00:22:52', '2020-04-10 00:23:19', 1, '2020-04-10 00:22:52', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (9, 'ccfb3a35-8bb4-eb6f-9910-79b68b06011d', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, 'undefined', 1, '2020-04-10 08:39:34', '2020-04-10 09:12:01', 1, '2020-04-10 08:39:34', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (10, '78132078-b9cc-b807-2dad-30af5e4576f1', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 09:28:41', '2020-04-10 09:29:07', 1, '2020-04-10 09:28:41', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (11, '273b1ff2-aa5d-70e6-6a11-09f7c3c760de', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 14:59:54', '2020-04-10 15:00:43', 1, '2020-04-10 14:59:54', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (12, '465d515d-2bc9-0ea6-d96a-4667d6596fc5', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 15:00:12', '2020-04-10 15:06:10', 1, '2020-04-10 15:00:12', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (13, '368dd3b3-f864-74ca-67e1-ac6c9dcf297d', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 15:38:03', '2020-04-10 15:38:22', 1, '2020-04-10 15:38:03', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (14, 'd2cabb74-6005-bae2-8af8-a0072e4a9206', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 15:42:16', '2020-04-10 15:42:31', 1, '2020-04-10 15:42:16', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (15, '74d2a96e-eba6-5dca-47a1-4cc8f8722e18', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 17:45:22', '2020-04-10 17:45:29', 1, '2020-04-10 17:45:22', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (16, '1ee90c50-b38a-7433-6066-5e08e4862205', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 17:49:28', '2020-04-10 17:50:11', 1, '2020-04-10 17:49:28', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (17, '65fd51d7-c5d7-63e8-7913-ceabafb956f9', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 17:52:27', '2020-04-10 17:52:43', 1, '2020-04-10 17:52:27', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (18, '0f6447ad-0bbd-f04c-41ff-6dea85d35ef7', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 17:54:35', '2020-04-10 17:54:49', 1, '2020-04-10 17:54:35', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (19, '5866960d-bf9c-3022-ece3-6c0aa50c9889', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 18:16:02', '2020-04-10 18:16:21', 1, '2020-04-10 18:16:02', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (20, 'b107d1f5-d605-d91a-11c4-f78a12dde02a', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 18:36:10', '2020-04-10 18:36:46', 1, '2020-04-10 18:36:10', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (21, '0ec48242-c62c-d1b9-349e-aefb31336b69', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 18:36:30', '2020-04-10 18:36:54', 1, '2020-04-10 18:36:30', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (22, 'bad9dbce-9b8a-3aac-37d3-b4614b9daa2e', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 18:36:35', '2020-04-10 18:40:23', 1, '2020-04-10 18:36:35', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (23, 'baab2543-7a2b-3d86-f150-c46a8f4fa78c', '18271187973', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-10 18:44:12', '2020-04-10 18:44:22', 1, '2020-04-10 18:44:12', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (24, '5d00ce2c-215c-e041-dec0-a220ef335e99', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-11 20:28:48', '2020-04-11 20:29:17', 1, '2020-04-11 20:28:48', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (25, '96d03fe5-e525-a32c-c383-d2af23407280', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-11 20:33:43', '2020-04-11 20:35:23', 1, '2020-04-11 20:33:43', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (26, '4db21e22-c127-ef6b-744c-54c110231ac1', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-11 21:24:19', '2020-04-11 21:24:36', 1, '2020-04-11 21:24:19', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (27, '49c19d9b-d3d1-79a1-e564-23b4b4bdea2a', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 15:10:16', '2020-04-12 15:10:35', 1, '2020-04-12 15:10:16', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (28, '8e0177e2-ce29-d83b-f621-0a0f5f272aad', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 15:26:01', '2020-04-12 15:26:32', 1, '2020-04-12 15:26:01', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (29, 'ce41dae9-3b1e-6718-cb60-1b610504b10f', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 15:38:16', '2020-04-12 15:38:46', 1, '2020-04-12 15:38:16', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (30, 'aeeb4b48-c328-1bb4-2f4b-40cae58a8b74', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 15:38:30', '2020-04-12 15:40:38', 1, '2020-04-12 15:38:30', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (31, 'b8e171c6-d128-9806-e4c0-fe2f8f657aa0', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:01:33', '2020-04-12 16:01:54', 1, '2020-04-12 16:01:33', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (32, '1f4369f3-8056-c134-1015-48d60c75255b', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:40:48', '2020-04-12 16:41:03', 1, '2020-04-12 16:40:48', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (33, 'c26a7adb-58d1-46cf-fc64-4f864207ddd8', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:45:24', '2020-04-12 16:45:45', 1, '2020-04-12 16:45:24', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (34, 'ac48c3af-b71e-b736-59cc-2acfd1268a85', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:49:52', '2020-04-12 16:50:27', 1, '2020-04-12 16:49:52', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (35, 'b2488d53-5ee6-c8e9-b1d1-724c0419db94', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:54:26', '2020-04-12 16:54:49', 1, '2020-04-12 16:54:26', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (36, '2e856010-03e1-f713-0aac-9d8e69a00774', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 16:58:51', '2020-04-12 16:59:20', 1, '2020-04-12 16:58:51', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (37, '183beb78-9366-fa7d-71f5-89c79c7d947d', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '28:EC:9A:16:00:41', 1, '2020-04-12 17:34:18', '2020-04-12 17:34:49', 1, '2020-04-12 17:34:18', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (38, '163da9bb-2e04-0d68-78ee-d2a23a81c664', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '2', '28:EC:9A:16:00:41', 1, '2020-04-13 08:47:19', '2020-04-13 08:47:27', 1, '2020-04-13 08:47:19', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (39, '5f155e6e-d90f-b99a-baaa-f949a7f1b0a2', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '2', '28:EC:9A:16:00:41', 1, '2020-04-13 08:49:15', '2020-04-13 08:49:23', 1, '2020-04-13 08:49:15', NULL);
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (40, '6473399e-cfaa-eda0-9b81-5f177bcec718', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '', 'undefined', 1, '2020-04-13 09:42:58', '2020-04-18 16:52:46', 1, '2020-04-13 09:42:58', '2020-04-18 00:00:00');
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (41, 'ddc1871f-f665-1725-30b0-d9ef81fc70aa', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '6', 'undefined', 1, '2020-04-13 10:03:28', '2020-04-19 09:21:41', 1, '2020-04-13 10:03:28', '2020-04-19 00:00:00');
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (42, 'cee971ba-e40a-50cf-2cca-b1ca5231c740', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '2', '28:EC:9A:16:00:41', 1, '2020-04-19 09:21:52', '2020-04-19 09:22:02', 1, '2020-04-19 09:21:52', '2020-04-19 00:00:00');
INSERT INTO `petcage`.`petcage_order`(`id`, `order_id`, `phone`, `open_id`, `pet_id`, `device_id`, `is_done`, `start_time`, `end_time`, `amount`, `create_time`, `update_time`) VALUES (43, 'b7442f01-b812-30b8-b9b3-35f6697c4f3c', '15313621879', 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '2', '28:EC:9A:16:00:41', 0, '2020-04-19 11:51:33', NULL, NULL, '2020-04-19 11:51:33', NULL);

drop table if exists feedback;
create table if not exists feedback(
  id int primary key auto_increment comment '自增主键',
  phone varchar(100) comment '用户手机号',
  open_id varchar(100) comment '用户open_id',
  order_id varchar(100) comment '订单id',
  feedback_type varchar(10) comment '反馈类型(1订单反馈,2设备维修,3系统反馈)',
  feedback_content varchar(255) comment '反馈内容（1,2,3,4,5,6）',
  satisfy_grade varchar(100) comment '客户满意度（订单反馈有效）',
  pictures text comment '故障图片(http://xxxx)',
  latitude varchar(100) comment '反馈时的客户径度',
  longitude varchar(100) comment '反馈时的客户纬度',
  petcage_id varchar(255) comment '笼牌号',
  description text comment '问题描述',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '反馈报修表' default charset='utf8'
;
# Ps: 反馈类型为1（订单反馈）时，反馈内容为客户所写文本框文字内容，并且客户满意度为1，2，3，4，5个等级；
# 反馈类型为2（设备维修反馈）时，反馈内容为1，2，3，4，5，6等，客户满意度为null；
# 目前没有系统反馈；
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (1, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', NULL, '2', '3', 'none', 'wxfile://tmp_a2f9e8cc07a296b1ce78578b2a99ac21abe8e7caa9dc9f27.jpg', '', '', '15', '不错', '2020-04-03 15:14:56', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (2, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'a3749995-335e-0b46-3165-62ca12e1e52f', '1', 'Nice', '4', 'wxfile://tmp_8c7b0bc6e2c16f0d35e0a65eac0c93e8aceb70d1bdc8f393.jpg', '', '', '123', '123445', '2020-04-04 13:55:55', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (3, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'bc99e5f4-56aa-77f8-3306-165b1271cdab', '1', '', '5', 'wxfile://tmp_dd0f3e6889e88de69196b38f21ec5225b3974466b954f173.jpg', '', '', '26474', 'Ehbd', '2020-04-04 13:59:13', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (4, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '955d3de4-7902-dcf8-86ec-135e5ac5684f', '1', 'Nice', '5', 'wxfile://tmp_cfd9b6f07cd2120402b79305a1c30ce770648d1242adf28d.jpg', '', '', '1234', '啊寸', '2020-04-04 14:10:56', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (5, NULL, 'ouHZt5Wh0Hfkoc1S1JArPO3D7TvU', NULL, '2', '3,1,2,4,5', 'none', '', '', '', '0', '', '2020-04-06 23:09:38', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (6, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'c564ecc8-e7ec-3dfe-2e65-e4bc0144c837', '1', '', '5', '', '', '', '0', '', '2020-04-09 20:55:57', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (7, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '4e51bd3a-3062-cc8a-6e53-a3cc95ea7b2c', '1', '', '3', '', '', '', '0', '', '2020-04-10 00:23:29', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (8, NULL, 'ouHZt5Ym2TBwU8KCMbX4cBp3PMTw', 'none', '2', '3', 'none', 'wxfile://tmp_94c394ba8d4984fbe4f8bf8e70fe2ba9.jpg', '', '', '0', '', '2020-04-10 08:12:13', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (9, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'ccfb3a35-8bb4-eb6f-9910-79b68b06011d', '1', '', '4', '', '', '', '0', '', '2020-04-10 09:12:08', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (10, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '78132078-b9cc-b807-2dad-30af5e4576f1', '1', '', '5', '', '', '', '0', '', '2020-04-10 09:29:16', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (11, NULL, 'ouHZt5Ym2TBwU8KCMbX4cBp3PMTw', 'none', '2', '1', 'none', 'wxfile://tmp_be2ce7621e34a153f1b2fa1484d8cbb3.jpg', '', '', '0', '', '2020-04-10 12:11:00', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (12, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '273b1ff2-aa5d-70e6-6a11-09f7c3c760de', '1', '', '3', '', '', '', '0', '', '2020-04-10 15:00:52', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (13, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '465d515d-2bc9-0ea6-d96a-4667d6596fc5', '1', '', '5', '', '', '', '0', '', '2020-04-10 15:06:14', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (14, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '368dd3b3-f864-74ca-67e1-ac6c9dcf297d', '1', '不错', '5', 'wxfile://tmp_61a96c4a3dc5a6b3f68810ebdd96b0d53afd731f69da6b49.jpg', '', '', '0', '', '2020-04-10 15:38:43', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (15, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'd2cabb74-6005-bae2-8af8-a0072e4a9206', '1', '', '5', 'wxfile://tmp_ad6e89fd64030f4c9057e2f785f0b7a44b21bd864f6274b7.jpg', '', '', '0', '', '2020-04-10 15:42:40', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (16, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '2', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.3jvw7L3JWWfd9ec04cdb24931e709153f8a7a9894c2e.jpeg,http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.YlWukW7pjJyE84d301dbbe0bb4efbb2f98dfb7652f14.jpg', '', '', '0', '', '2020-04-10 15:48:23', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (17, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '1', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.fUo99IXjAXP49ec04cdb24931e709153f8a7a9894c2e.jpeg,http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.i9UHkKh6vwUUabdb74339decd0c3ea129bdc15c16bf7.jpeg,', '31.56096', '114.12694', '0', 'dsfa', '2020-04-10 16:19:34', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (18, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '2', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.2OV1w20bmJfN6a4597e54fdb38770c76dfce135446c3.jpeg,', '31.56096', '114.12694', '0', '', '2020-04-10 16:49:45', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (19, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '2,5', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.qnFDSmfC8KKk6f7f3bdfbc1e80effd9c527101b79027.jpeg,', '31.56096', '114.12694', '0', 'fdsa', '2020-04-10 16:59:02', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (20, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '2', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.yoPMIhCe9UU19ec04cdb24931e709153f8a7a9894c2e.jpeg,', '31.56096', '114.12694', '0', '', '2020-04-10 17:08:29', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (21, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '1', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.jqSGXZVsrbThabdb74339decd0c3ea129bdc15c16bf7.jpeg,', '31.56096', '114.12694', 'dfas', 'fdsa', '2020-04-10 17:22:30', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (22, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '1', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.jqSGXZVsrbThabdb74339decd0c3ea129bdc15c16bf7.jpeg,', '31.56096', '114.12694', 'dfas', 'fdsa', '2020-04-10 17:22:30', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (23, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '1', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.jqSGXZVsrbThabdb74339decd0c3ea129bdc15c16bf7.jpeg,', '31.56096', '114.12694', 'dfas', 'fdsa', '2020-04-10 17:22:30', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (24, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '1', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.jqSGXZVsrbThabdb74339decd0c3ea129bdc15c16bf7.jpeg,', '31.56096', '114.12694', 'dfas', 'fdsa', '2020-04-10 17:22:32', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (25, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'none', '2', '4', 'none', 'http://tmp/wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.QZifkJa3m6tXee6f34906624c247d5139cc54fe0fde8.jpeg,http://cdn.wetech.top//mnt/pet/avatar/1586510796442wx3a23cca935b146f7.o6zAJs09zvEoKvOGMm5fvNJjD-K0.QZifkJa3m6tXee6f34906624c247d5139cc54fe0fde8.jpeg', '31.56096', '114.12694', '0', '', '2020-04-10 17:26:37', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (26, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '74d2a96e-eba6-5dca-47a1-4cc8f8722e18', '1', '', '5', 'wxfile://tmp_aa725272543677657f8d361f4d45137b952548228aa99539.jpg', '', '', '0', '', '2020-04-10 17:45:37', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (27, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '65fd51d7-c5d7-63e8-7913-ceabafb956f9', '1', '', '4', 'wxfile://tmp_6579fa7fb22629e5ba81868923b7d5cb47dfee76e6b5bbeb.jpg', '', '', '好', '', '2020-04-10 17:52:59', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (28, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '0f6447ad-0bbd-f04c-41ff-6dea85d35ef7', '1', '', '4', 'wxfile://tmp_ba06737cb735ff4a73bb9bb46cbab047b3399b68ee676396.jpg', '', '', '0', '', '2020-04-10 17:55:06', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (29, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '5866960d-bf9c-3022-ece3-6c0aa50c9889', '1', '', '3', 'wxfile://tmp_2919bdac2d8030c00dbbf9f6a2baf87bd92a74af10b8a194.jpg', '', '', '0', '', '2020-04-10 18:16:32', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (30, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'bad9dbce-9b8a-3aac-37d3-b4614b9daa2e', '1', '', '4', 'wxfile://tmp_ee13aefe1e1c5b1fb494e3c9f89674ee381f4c49248cceae.jpg', '', '', '0', '', '2020-04-10 18:40:37', NULL);
INSERT INTO `petcage`.`feedback`(`id`, `phone`, `open_id`, `order_id`, `feedback_type`, `feedback_content`, `satisfy_grade`, `pictures`, `latitude`, `longitude`, `petcage_id`, `description`, `create_time`, `update_time`) VALUES (31, NULL, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', 'baab2543-7a2b-3d86-f150-c46a8f4fa78c', '1', '', '5', 'wxfile://tmp_d241e8e8019f59a22aee794575fe2cb9c0620ce30643ae4d.jpg', '', '', '0', '', '2020-04-10 18:44:33', NULL);

drop table if exists device;
create table if not exists device(
  id int primary key auto_increment comment '自增主键',
  device_id varchar(250) comment '设备id',
  device_name varchar(255) comment '设备名称',
  longitude varchar(100) comment '径度',
  latitude varchar(100) comment '纬度',
  kwh varchar(100) comment '电量',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '设备表' default charset='utf8'
;
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (101, '0', NULL, 122.71482796183311, 39.125114403374795, 32, '2020-03-25 08:33:30', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (102, '1', NULL, 120.40083064236966, 40.70123799552728, 59, '2020-03-25 08:33:31', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (103, '2', NULL, 116.56358397844066, 33.380756911253336, 21, '2020-03-25 08:33:31', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (104, '3', NULL, 118.7723276800158, 31.79543748217548, 61, '2020-03-25 08:33:31', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (105, '4', NULL, 116.9834939097196, 39.998529686001035, 95, '2020-03-25 08:33:31', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (106, '5', NULL, 123.92724564331778, 37.717245721367064, 68, '2020-03-25 08:33:31', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (107, '6', NULL, 119.09570321264398, 36.16810990373734, 41, '2020-03-25 08:33:32', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (108, '7', NULL, 120.83918051979059, 37.121825762533724, 90, '2020-03-25 08:33:32', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (109, '8', NULL, 119.79757867299666, 38.926827579011785, 51, '2020-03-25 08:33:32', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (110, '9', NULL, 123.13995319306098, 41.411762273995215, 95, '2020-03-25 08:33:32', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (111, '10', NULL, 118.1046067913627, 40.70944154341942, 37, '2020-03-25 08:33:32', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (112, '11', NULL, 117.78619736390341, 36.182930293552175, 55, '2020-03-25 08:33:33', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (113, '12', NULL, 121.92953837924351, 41.03831036276633, 68, '2020-03-25 08:33:33', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (114, '13', NULL, 121.48745511398224, 39.12726879095079, 65, '2020-03-25 08:33:33', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (115, '14', NULL, 122.12968144745457, 39.64739647492395, 55, '2020-03-25 08:33:33', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (116, '15', NULL, 115.53284004200184, 37.54971727497058, 17, '2020-03-25 08:33:33', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (117, '16', NULL, 122.47982330262987, 40.314205212498436, 28, '2020-03-25 08:33:34', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (118, '17', NULL, 114.81340176954225, 39.37983406351025, 45, '2020-03-25 08:33:34', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (119, '18', NULL, 114.63751377042598, 41.39473065142246, 49, '2020-03-25 08:33:34', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (120, '19', NULL, 122.63646311591539, 38.48830757438373, 26, '2020-03-25 08:33:34', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (121, '20', NULL, 115.57474291069815, 39.199150679267056, 86, '2020-03-25 08:33:34', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (122, '21', NULL, 114.56498149249973, 41.28659784851189, 12, '2020-03-25 08:33:35', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (123, '22', NULL, 124.0692335767225, 34.92737826605993, 8, '2020-03-25 08:33:35', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (124, '23', NULL, 114.15838511761648, 35.408995709182356, 3, '2020-03-25 08:33:36', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (125, '24', NULL, 114.98354799419691, 37.010196499283516, 20, '2020-03-25 08:33:36', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (126, '25', NULL, 123.53352475008458, 35.014128967535875, 44, '2020-03-25 08:33:36', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (127, '26', NULL, 119.69329485318033, 37.01785940992791, 13, '2020-03-25 08:33:37', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (128, '27', NULL, 120.04408949076266, 38.719841636906025, 3, '2020-03-25 08:33:37', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (129, '28', NULL, 115.39111677984071, 35.73792863558408, 6, '2020-03-25 08:33:37', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (130, '29', NULL, 119.75720796349933, 33.71618134347091, 31, '2020-03-25 08:33:37', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (131, '30', NULL, 122.39362056812969, 34.88763749468918, 95, '2020-03-25 08:33:37', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (132, '31', NULL, 115.92763876701778, 39.79200865641582, 33, '2020-03-25 08:33:38', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (133, '32', NULL, 115.32803550606306, 33.76889100275889, 11, '2020-03-25 08:33:38', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (134, '33', NULL, 123.17790719366697, 38.04310132113947, 64, '2020-03-25 08:33:38', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (135, '34', NULL, 122.13790705703376, 38.85190238250742, 96, '2020-03-25 08:33:38', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (136, '35', NULL, 115.017902784187, 35.704038425657174, 48, '2020-03-25 08:33:38', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (137, '36', NULL, 120.99904613201383, 33.243649393904995, 86, '2020-03-25 08:33:39', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (138, '37', NULL, 123.26730975082043, 38.79918135737647, 89, '2020-03-25 08:33:39', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (139, '38', NULL, 118.72783677843634, 39.15034443967989, 13, '2020-03-25 08:33:39', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (140, '39', NULL, 115.81444623254053, 36.767932078219985, 98, '2020-03-25 08:33:39', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (141, '40', NULL, 123.52469073786303, 40.281007893355564, 34, '2020-03-25 08:33:39', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (142, '41', NULL, 122.71432020751718, 38.758821256748035, 48, '2020-03-25 08:33:40', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (143, '42', NULL, 116.28111664512751, 32.49309481009844, 24, '2020-03-25 08:33:40', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (144, '43', NULL, 120.58567341355604, 38.18301511408391, 0, '2020-03-25 08:33:40', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (145, '44', NULL, 119.48984745727951, 33.84781458719523, 41, '2020-03-25 08:33:40', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (146, '45', NULL, 116.95502214842823, 32.542455830546686, 55, '2020-03-25 08:33:41', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (147, '46', NULL, 115.92824462064372, 39.06265938645778, 47, '2020-03-25 08:33:41', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (148, '47', NULL, 123.54688027291263, 33.14706218378779, 80, '2020-03-25 08:33:41', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (149, '48', NULL, 122.83155318641441, 34.00715577015004, 37, '2020-03-25 08:33:41', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (150, '49', NULL, 120.03679249403497, 38.50897339211995, 15, '2020-03-25 08:33:41', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (151, '50', NULL, 117.31723906509022, 37.49055992049019, 18, '2020-03-25 08:33:42', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (152, '51', NULL, 117.70866332711248, 34.50179791456649, 44, '2020-03-25 08:33:42', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (153, '52', NULL, 116.32371901594558, 37.95279098177213, 78, '2020-03-25 08:33:42', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (154, '53', NULL, 117.00551249181271, 31.755297862592943, 70, '2020-03-25 08:33:42', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (155, '54', NULL, 117.03870819269466, 41.12843695050363, 84, '2020-03-25 08:33:42', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (156, '55', NULL, 116.08232600391722, 40.11962364061498, 0, '2020-03-25 08:33:43', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (157, '56', NULL, 122.68559100527978, 35.379197819227485, 50, '2020-03-25 08:33:43', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (158, '57', NULL, 123.37772010212583, 33.5274646676661, 29, '2020-03-25 08:33:43', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (159, '58', NULL, 122.85142249754547, 40.08520889601749, 62, '2020-03-25 08:33:43', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (160, '59', NULL, 116.84284376788608, 32.72172180589898, 67, '2020-03-25 08:33:43', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (161, '60', NULL, 121.53177637844543, 35.683002757344894, 81, '2020-03-25 08:33:44', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (162, '61', NULL, 115.80570369698343, 41.29762750984706, 19, '2020-03-25 08:33:44', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (163, '62', NULL, 119.43227912622565, 33.34196850635723, 92, '2020-03-25 08:33:44', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (164, '63', NULL, 119.33718272901554, 33.95119553639247, 94, '2020-03-25 08:33:44', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (165, '64', NULL, 116.65331899107213, 38.19990547085202, 19, '2020-03-25 08:33:44', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (166, '65', NULL, 123.25693663323632, 33.99607613451328, 18, '2020-03-25 08:33:45', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (167, '66', NULL, 115.53503789764237, 33.77982453178586, 83, '2020-03-25 08:33:45', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (168, '67', NULL, 123.0821301452021, 37.63779540418386, 36, '2020-03-25 08:33:45', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (169, '68', NULL, 120.14711756085904, 40.09156018451835, 71, '2020-03-25 08:33:45', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (170, '69', NULL, 123.21393117416841, 34.29542754707536, 83, '2020-03-25 08:33:45', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (171, '70', NULL, 116.69382329630676, 33.75615144253193, 93, '2020-03-25 08:33:46', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (172, '71', NULL, 117.88783149751457, 35.62191644202514, 59, '2020-03-25 08:33:46', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (173, '72', NULL, 120.8004057781533, 34.62512526087109, 78, '2020-03-25 08:33:46', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (174, '73', NULL, 120.0895205784188, 34.13102487825162, 79, '2020-03-25 08:33:46', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (175, '74', NULL, 118.32349455913237, 31.96729497790114, 69, '2020-03-25 08:33:46', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (176, '75', NULL, 117.93076851785963, 35.41268506207153, 6, '2020-03-25 08:33:47', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (177, '76', NULL, 120.91747809620423, 38.796394457066064, 82, '2020-03-25 08:33:47', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (178, '77', NULL, 116.13872859529812, 35.66080968974583, 57, '2020-03-25 08:33:47', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (179, '78', NULL, 118.42778322421287, 31.698131981539234, 54, '2020-03-25 08:33:47', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (180, '79', NULL, 118.45186687858556, 34.63378569074312, 84, '2020-03-25 08:33:47', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (181, '80', NULL, 118.32404273989819, 37.41840790371206, 3, '2020-03-25 08:33:48', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (182, '81', NULL, 115.76491542733218, 37.92791298709391, 77, '2020-03-25 08:33:48', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (183, '82', NULL, 115.86397712333373, 32.07599152818315, 10, '2020-03-25 08:33:48', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (184, '83', NULL, 119.82486388782301, 34.68334572459061, 22, '2020-03-25 08:33:48', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (185, '84', NULL, 121.24897680922703, 36.811895459985365, 94, '2020-03-25 08:33:48', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (186, '85', NULL, 120.59368990229973, 33.57696498875757, 54, '2020-03-25 08:33:49', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (187, '86', NULL, 117.40443814239369, 39.48030768019179, 64, '2020-03-25 08:33:49', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (188, '87', NULL, 115.22307964749045, 41.285164577308265, 46, '2020-03-25 08:33:49', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (189, '88', NULL, 117.74646514207724, 36.831629872909886, 31, '2020-03-25 08:33:49', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (190, '89', NULL, 123.48241673667934, 37.215711101012346, 78, '2020-03-25 08:33:49', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (191, '90', NULL, 121.09730220290675, 34.67998257688562, 11, '2020-03-25 08:33:50', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (192, '91', NULL, 117.64565694352456, 35.0788132433444, 19, '2020-03-25 08:33:50', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (193, '92', NULL, 119.41439965270493, 37.420373708283535, 14, '2020-03-25 08:33:50', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (194, '93', NULL, 119.64688221604061, 32.80772381396079, 71, '2020-03-25 08:33:50', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (195, '94', NULL, 117.28839294533387, 38.29088608264818, 34, '2020-03-25 08:33:50', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (196, '95', NULL, 123.31858495904189, 36.55689496013545, 15, '2020-03-25 08:33:51', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (197, '96', NULL, 123.231575770881, 34.62564173524521, 69, '2020-03-25 08:33:51', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (198, '97', NULL, 123.0487524153724, 41.282176412993174, 41, '2020-03-25 08:33:51', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (199, '98', NULL, 122.1839026742049, 39.74892075203802, 52, '2020-03-25 08:33:51', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (200, '99', NULL, 119.00412453549873, 34.989338778367895, 31, '2020-03-25 08:33:51', NULL);
INSERT INTO `petcage`.`device`(`id`, `device_id`, `device_name`, `longitude`, `latitude`, `kwh`, `create_time`, `update_time`) VALUES (201, '28:EC:9A:16:00:41', 'Lock28EC9A160041', 114.8578181907033, 32.291838190703295, 3.96, '2020-04-05 00:00:00', '2020-04-19 11:51:36');

drop table if exists user_type;
# --1普通会员,2周卡会员,3月卡会员,4季卡会员,5年卡会员
create table if not exists user_type(
  id int primary key auto_increment comment '自增主键',
  code varchar(10) comment '会员类型编码',
  name varchar(100) comment '会员类型名称',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '会员类型字典表' default charset='utf8'
;
INSERT INTO `petcage`.`user_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (1, '1', '普通会员', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`user_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (2, '2', '周卡会员', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`user_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (3, '3', '月卡会员', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`user_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (4, '4', '季卡会员', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`user_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (5, '5', '年卡会员', '2020-04-01 23:00:12', NULL);

drop table if exists damage_type;
# --1私锁私用；2门锁损坏；3笼牌缺失；4笼子损坏；5其他故障；
create table if not exists damage_type(
  id int primary key auto_increment comment '自增主键',
  code varchar(10) comment '故障类型编码',
  name varchar(100) comment '故障类型名称',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '故障类型字典表' default charset='utf8'
;
INSERT INTO `petcage`.`damage_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (1, '1', '私锁私用', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`damage_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (2, '2', '门锁损坏', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`damage_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (3, '3', '笼牌缺失', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`damage_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (4, '4', '笼子损坏', '2020-04-01 23:00:12', NULL);
INSERT INTO `petcage`.`damage_type`(`id`, `code`, `name`, `create_time`, `update_time`) VALUES (5, '5', '其他故障', '2020-04-01 23:00:12', NULL);


drop table if exists user_pet;
# 宠物表（主人的宠物列表）
create table if not exists user_pet(
  id int primary key auto_increment comment '',
  open_id varchar(255) comment '',
  contact varchar(100) comment '联系人手机号',
  pet_type varchar(100) comment '宠物类型(猫，狗)',
  variety varchar(100) comment '品种',
  nick_name varchar(255) comment '宠物昵称',
  gender  varchar(100) comment '宠物性别',
  birthday varchar(100) comment '宠物出生日期',
  avatar_url varchar(255) comment '宠物头像',
  description text comment '描述',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '主人宠物表' default charset='utf8';
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (1, NULL, '15313621879', '狗', '比熊犬', 'Kk', '0', '2020-04-09', 'wxfile://tmp_a73f59243e8014d9fc96a87d2577dab36b92daf4a79a452f.jpg', '2020-04-09 22:36:32', NULL, '眼神魔性');
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (2, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '15313621879', '狗', '哈士奇', 'Hasky', '0', '2018-12-25', 'http://cdn.wetech.top//mnt/pet/avatar/1586740696033tmp_dfa7dd1f6623a518005ff35739b16d6db0863194deffdc4d.jpg', '2020-04-09 23:31:22', NULL, '拆家的狗东西');
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (3, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '18271187973', '狗', '哈士奇', '八哥', '0', '2018-12-25', 'http://cdn.wetech.top//mnt/pet/avatar/1586740714137tmp_f770a5b2897ab4d735ebc45cd1013a6640eb8207a1ca7524.jpg', '2020-04-10 00:22:52', NULL, '八哥最大真大');
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (4, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '15313621879', '狗', '哈士奇', '撒泼', '0', '2018-12-25', 'http://cdn.wetech.top//mnt/pet/avatar/1586740969002tmp_d6134e88e238a78dda8f2eb6dcf0fdf79b8bd813bbc19ab1.jpg', '2020-04-10 08:39:34', '2020-04-13 00:00:00', '你好大哦');
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (5, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '15313621879', '狗', '哈士奇', '陈作立', '0', '2018-12-25', 'http://cdn.wetech.top//mnt/pet/avatar/1586675415630tmp_f6f50041f7ea826b592e9d030e1a7d4ac0a401fecf70aa5f.jpg', '2020-04-12 15:10:16', NULL, '还挺帅的');
INSERT INTO `petcage`.`user_pet`(`id`, `open_id`, `contact`, `pet_type`, `variety`, `nick_name`, `gender`, `birthday`, `avatar_url`, `create_time`, `update_time`, `description`) VALUES (6, 'ouHZt5bOQUAFi3C8rqDXC_dgCDvI', '15313621879', '狗', '萨摩耶', '萨摩耶', '0', '2019-12-31', 'http://cdn.wetech.top//mnt/pet/avatar/1586743407453tmp_e269e472674374ead4e1317e17415aeb15ed5eac4a0ed515.jpg', NULL, NULL, '好白哦');

drop table if exists dim_pet;
-- 宠物字典表(分类及品种)
create table if not exists dim_pet(
  id int primary key auto_increment comment '自增主键',
  pet_type varchar(100) comment '宠物类型',
  variety varchar(100) comment '品种',
  size varchar(10) comment '宠物大小（大型、中型、小型）',
  country varchar(100) comment '国别',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '宠物字典表' default charset='utf8';
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (1, '狗', '哈士奇', '', NULL, '2020-04-08 10:13:22', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (2, '狗', '萨摩耶', NULL, NULL, '2020-04-08 10:13:45', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (3, '狗', '拉布拉多', NULL, NULL, '2020-04-08 10:13:58', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (4, '狗', '边境牧羊犬', NULL, NULL, '2020-04-08 10:14:08', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (5, '狗', '柯基犬', NULL, NULL, '2020-04-08 10:14:21', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (6, '狗', '泰迪', NULL, NULL, '2020-04-08 10:14:28', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (7, '狗', '阿拉斯加', NULL, NULL, '2020-04-08 10:14:36', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (8, '狗', '柴犬', NULL, NULL, '2020-04-08 10:14:44', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (9, '狗', '比熊犬', NULL, NULL, '2020-04-08 10:14:54', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (10, '狗', '法国斗牛犬', NULL, NULL, '2020-04-08 10:15:04', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (11, '狗', '金毛寻回犬', NULL, NULL, '2020-04-08 10:15:15', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (12, '狗', '德国牧羊犬', NULL, NULL, '2020-04-08 10:15:22', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (13, '狗', '中华田园犬', NULL, NULL, '2020-04-08 10:15:29', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (14, '狗', '博美', NULL, NULL, '2020-04-08 10:15:38', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (15, '狗', '西施', NULL, NULL, '2020-04-08 10:16:01', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (16, '狗', '吉娃娃', NULL, NULL, '2020-04-08 10:16:06', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (17, '狗', '贵宾犬', NULL, NULL, '2020-04-08 10:16:20', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (18, '狗', '秋田犬', NULL, NULL, '2020-04-08 10:16:35', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (19, '狗', '雪纳瑞', NULL, NULL, '2020-04-08 10:16:45', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (20, '狗', '松狮犬', NULL, NULL, '2020-04-08 10:16:53', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (21, '狗', '巴哥犬', NULL, NULL, '2020-04-08 10:17:08', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (22, '狗', '恶霸犬', NULL, NULL, '2020-04-08 10:17:21', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (23, '狗', '杜宾犬', NULL, NULL, '2020-04-08 10:17:27', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (24, '狗', '马尔济斯犬', NULL, NULL, '2020-04-08 10:17:38', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (25, '狗', '英国斗牛犬', NULL, NULL, '2020-04-08 10:17:47', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (26, '狗', '蝴蝶犬', NULL, NULL, '2020-04-08 10:18:05', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (27, '狗', '喜乐蒂犬', NULL, NULL, '2020-04-08 10:18:13', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (28, '狗', '藏獒犬', NULL, NULL, '2020-04-08 10:18:25', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (29, '狗', '高加索犬', NULL, NULL, '2020-04-08 10:18:43', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (30, '狗', '纽芬兰犬', NULL, NULL, '2020-04-08 10:19:01', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (31, '狗', '苏格兰牧羊犬', NULL, NULL, '2020-04-08 10:19:14', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (32, '猫', '英国短毛猫', NULL, NULL, '2020-04-08 10:19:43', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (33, '猫', '布偶猫', NULL, NULL, '2020-04-08 10:19:51', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (34, '猫', '美国短毛猫', NULL, NULL, '2020-04-08 10:19:59', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (35, '猫', '无毛猫', NULL, NULL, '2020-04-08 10:20:10', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (36, '猫', '中华田园猫', NULL, NULL, '2020-04-08 10:20:19', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (37, '猫', '银渐层猫', NULL, NULL, '2020-04-08 10:20:34', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (38, '猫', '串串猫', NULL, NULL, '2020-04-08 10:20:46', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (39, '猫', '加菲猫', NULL, NULL, '2020-04-08 10:20:53', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (40, '猫', '狸花猫', NULL, NULL, '2020-04-08 10:21:04', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (41, '猫', '金渐层', NULL, NULL, '2020-04-08 10:21:33', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (42, '猫', '苏格兰折耳猫', NULL, NULL, '2020-04-08 10:21:44', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (43, '猫', '缅因猫', NULL, NULL, '2020-04-08 10:21:55', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (44, '猫', '金吉拉', NULL, NULL, '2020-04-08 10:22:04', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (45, '猫', '安哥拉', NULL, NULL, '2020-04-08 10:22:14', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (46, '猫', '阿比西尼亚', NULL, NULL, '2020-04-08 10:22:22', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (47, '猫', '英国长毛猫', NULL, NULL, '2020-04-08 10:22:32', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (48, '猫', '曼基康猫', NULL, NULL, '2020-04-08 10:22:49', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (49, '猫', '孟买猫', NULL, NULL, '2020-04-08 10:23:01', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (50, '猫', '俄罗斯蓝猫', NULL, NULL, '2020-04-08 10:23:10', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (51, '猫', '波斯猫', NULL, NULL, '2020-04-08 10:23:16', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (52, '猫', '孟加拉豹猫', NULL, NULL, '2020-04-08 10:23:36', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (53, '猫', '虎斑猫', NULL, NULL, '2020-04-08 10:23:44', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (54, '猫', '土耳其梵猫', NULL, NULL, '2020-04-08 10:23:59', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (55, '猫', '柏曼猫', NULL, NULL, '2020-04-08 10:24:21', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (56, '猫', '德文卷毛猫', NULL, NULL, '2020-04-08 10:24:33', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (57, '猫', '喜马拉雅猫', NULL, NULL, '2020-04-08 10:24:42', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (58, '猫', '橘猫', NULL, NULL, '2020-04-08 10:24:49', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (59, '猫', '高地猫', NULL, NULL, '2020-04-08 10:24:55', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (60, '猫', '埃及猫', NULL, NULL, '2020-04-08 10:25:03', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (61, '猫', '狮子猫', NULL, NULL, '2020-04-08 10:25:12', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (62, '猫', '新加坡猫', NULL, NULL, '2020-04-08 10:25:20', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (63, '猫', '西伯利亚森林猫', NULL, NULL, '2020-04-08 10:25:37', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (64, '猫', '挪威森林猫', NULL, NULL, '2020-04-08 10:25:55', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (65, '猫', '东方猫', NULL, NULL, '2020-04-08 10:26:04', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (66, '猫', '茶杯猫', NULL, NULL, '2020-04-08 10:26:16', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (67, '猫', '日本短尾猫', NULL, NULL, '2020-04-08 10:26:27', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (68, '猫', '柯尼斯卷毛猫', NULL, NULL, '2020-04-08 10:26:53', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (69, '猫', '拿破仑', NULL, NULL, '2020-04-08 10:27:03', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (70, '其他动物', '蜥蜴', NULL, NULL, '2020-04-08 10:27:28', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (71, '其他动物', '鳄鱼', NULL, NULL, '2020-04-08 10:27:41', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (72, '其他动物', '水牛', NULL, NULL, '2020-04-08 10:27:47', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (73, '其他动物', '乌龟', NULL, NULL, '2020-04-08 10:27:55', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (74, '其他动物', '蛇', NULL, NULL, '2020-04-08 10:28:03', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (75, '其他动物', '仓鼠', NULL, NULL, '2020-04-08 10:28:09', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (76, '其他动物', '兔子', NULL, NULL, '2020-04-08 10:28:19', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (77, '其他动物', '老鼠', NULL, NULL, '2020-04-08 10:28:27', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (78, '鱼', '海缸', NULL, NULL, '2020-04-08 10:28:57', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (79, '鱼', '锦鲤', NULL, NULL, '2020-04-08 10:29:06', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (80, '鱼', '斗鱼', NULL, NULL, '2020-04-08 10:29:12', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (81, '鱼', '龙鱼', NULL, NULL, '2020-04-08 10:29:20', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (82, '鱼', '草金鱼', NULL, NULL, '2020-04-08 10:29:28', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (83, '鱼', '草缸', NULL, NULL, '2020-04-08 10:29:39', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (84, '鱼', '金鱼', NULL, NULL, '2020-04-08 10:29:45', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (85, '鱼', '罗汉鱼', NULL, NULL, '2020-04-08 10:30:43', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (86, '鸟', '鹦鹉', NULL, NULL, '2020-04-08 10:30:57', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (87, '鸟', '文鸟', NULL, NULL, '2020-04-08 10:31:03', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (88, '鸟', '科尔鸭', NULL, NULL, '2020-04-08 10:31:18', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (89, '鸟', '珍珠鸟', NULL, NULL, '2020-04-08 10:31:26', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (90, '鸟', '宠物鸡', NULL, NULL, '2020-04-08 10:31:41', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (91, '鸟', '鸽子', NULL, NULL, '2020-04-08 10:31:48', NULL);
INSERT INTO `petcage`.`dim_pet`(`id`, `pet_type`, `variety`, `size`, `country`, `create_time`, `update_time`) VALUES (92, '鸟', '麻雀', NULL, NULL, '2020-04-08 10:31:59', NULL);

drop table if exists app_info;
-- 小程序信息：
create table if not exists app_info (
  id int primary key auto_increment comment '自增主键',
  service_content text comment '服务条例',
  private_content text comment '隐私协议',
  version varchar(100) comment '小程序版本',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime default current_timestamp comment '更新时间'
) comment '小程序信息表' default charset='utf8';
INSERT INTO `petcage`.`app_info`(`id`, `service_content`, `private_content`, `version`, `create_time`, `update_time`) VALUES (1, '会员购卡充值服务协议\n\n\n一、首部及导言\n欢迎您使用派克购卡充值服务！\n为使用派克购卡充值服务（简称为：本服务），您应当阅读并遵守《购卡充值服务协议》（简称为：本协议）。请您务必审慎阅读、充分理解各条款内容，特别是免除或限制责任的相应条款，以及开通或使用某项服务的单独协议，并选择接受或不接受。免除或限制责任条款可能以加粗形式提示您注意。\n除非您已阅读并接受本协议所有条款，否则您无权使用本服务。您对本服务的任何购买或接受赠与等获取行为及登录、查看等任何使用行为即视为您已阅读并同意本协议的约束。\n如果您未满18周岁，请在法定监护人的陪同下阅读本协议，并特别注意未成年人使用条款。\n二、协议的范围\n1.【协议适用主体范围】本协议是您与派克之间关于您使用本服务所订立的协议。\n2.【本服务内容】本协议服务于宠物世界微信小程序，仅用于此微信小程序。本协议内容同时包括派克可能不断发布的关于本服务的相关协议、业务规则等内容。内容一经正式发布，即为本服务不可分割的组成部分。\n三、关于本服务\n　　购卡充值服务，指按照派克的指定方式支付一定购卡服务费用之后，用户可以享有由派克或第三方提供的在派克产品、生活等方面特权的服务，简称为：本服务。\n　　派克可能会根据不同的产品及服务类型，推出不同的购卡充值服务，目前，派克提供周卡、月卡、季卡、年卡等不同种类的购卡充值服务，同时，派克也可能会根据用户的需求、产品及服务类型的变化等，对现有购卡充值服务种类进行调整以及不断推出新的购卡充值服务种类。派克也可能会在不同时间推出具体不同的服务内容，以不断完善、优化本服务。具体购卡充值服务种类及服务内容以相关服务页面公布、实际提供的内容为准。您可以自行根据需要选择相应服务。\n　　您所享有的本服务的具体内容可能会因为级别、是否年费、开通期限、您选择的具体服务类别等因素而有不同，通常高级别、开通年费服务、开通期限较长等情况下，您将会享有更多的服务，具体以相关服务页面公布、实际提供的内容为准。\n四、权利义务\n1.【关于收费】本服务是派克提供的收费服务，您须在按照本服务的收费标准支付相应费用后，方可使用本服务。此外，您也可以通过接受好友赠送等派克认可的其他方式享有、使用本服务。派克可能会根据本服务的整体规划，对本服务的收费标准、方式等进行修改和变更，前述修改、变更，派克将在相应服务页面进行展示。您若需要获取、使用本服务，请先提前了解清楚当时关于本服务的收费标准、方式等信息。\n2.【服务开通】您应该通过派克指定的微信支付方式、今后派克指定方式在依约支付一定费用后开通本服务。本服务开通之后，不可进行转让。您理解并同意：对于通过手机短信方式开通本服务的用户，为了保护手机用户的帐户安全、保障用户权益，派克有权对手机用户的交易及使用行为进行独立判断。如果派克根据一般的常识判断认为可能存在风险，您将无法完成重复开通的操作，对于前述由于派克采取的相关措施导致您可能无法开通本服务或可能给您造成损失的，您同意自行承担相关责任和损失。\n3.【服务期限】本服务的服务期限以您自行选择并支付相应服务费用的期限为准，您也可以登陆派克充值中心或者本服务的相应页面查询。本服务的服务开通最高期限会受到一定限制，具体以派克制定的的规则为准。\n4.【行为规范】\na.【五不准】您在使用本服务时不得利用本服务从事以下行为，包括但不限于：\ni.发布、传送、传播、储存违反国家法律、危害国家安全统一、社会稳定、公序良俗、社会公德以及侮辱、诽谤、淫秽、暴力的内容；\nii.发布、传送、传播、储存侵害他人名誉权、肖像权、知识产权、商业秘密等合法权利的内容；\niii.虚构事实、隐瞒真相以误导、欺骗他人；\niv.发表、传送、传播广告信息及垃圾信息；\nv.从事其他违反法律法规、政策及公序良俗、社会公德等的行为。\nb.【用户禁止行为】本服务仅供您个人使用，除非经派克书面许可，您不得进行以下行为：\ni.通过任何方式搜集本服务中其他用户的用户名、电子邮件、手机号等相关信息，并以发送垃圾邮件、连锁邮件、垃圾短信、即时消息等方式干扰、骚扰其他用户；\nii.通过本服务发布包含广告、宣传、促销等内容的信息；\niii.将本服务再次许可他人使用；\niv.其他未经派克书面许可的行为。\nc.【对自己行为负责】您充分了解并同意，您必须为自己注册帐号下的一切行为负责，包括但不限于您所发表的任何内容以及由此产生的任何后果。您应对本服务中的内容自行加以判断，并承担因使用内容而引起的所有风险，包括因对内容的正确性、完整性或实用性的依赖而产生的风险。\n5.【服务的变更、中止或终止】 您充分了解并同意，由于互联网服务的特殊性，派克可能会按照相关法规、双方约定或在其他必要时，中止或终止向您提供本服务，届时，派克会依法保护您的合法权益。\n五、违约责任\n1.如果派克发现或收到他人举报您有违反本协议任何行为的，派克有权依法进行独立判断并采取技术手段予以删除、屏蔽或断开相关的信息。同时，派克有权视您的行为性质，对您采取包括但不限于暂停或终止部分或全部本服务、中止或终止您对账号使用、追究您法律责任等措施，派克也无需向您退还任何费用，而由此给您带来的损失（包括但不限于通信中断、相关数据清空、未使用的服务费用作为违约金而归派克所有等），由您自行承担，造成派克损失的，您也应予以赔偿。\n2.对第三方损害的处理：您有违反本协议任何行为，导致任何第三方损害的，您应当独立承担责任；派克因此遭受损失的，您也应当一并赔偿。\n六、其他\n1.协议的生效：您使用本服务即视为您已阅读并同意受本协议的约束。\n2.协议签订地：本协议签订地为中华人民共和国北京市海淀区。\n3.适用法律：本协议的成立、生效、履行、解释及纠纷解决，适用中华人民共和国大陆地区法律（不包括冲突法）。\n4.争议解决：若您和派克之间发生任何纠纷或争议，首先应友好协商解决；协商不成的，您同意将纠纷或争议提交本协议签订地有管辖权的人民法院管辖。\n5.条款标题：本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵义解释的依据。\n6.条款效力：本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。\n　　(正文完)\n\n派克公司  \n\n', '隐私保护协议\n\n\n一、概述\n本协议适用于所有使用“宠物世界”微信小程序（以下简称本软件）所提供的服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击“我已阅读并同意《宠物世界服务协议》“，本协议即构成对双方有约束力的法律文件。\n我们深知个人信息对您的重要性，并会尽全力保护您的个人信息安全可靠。我们致力于维持您对我们的信任，恪守以下原则，保护您的个人信息：权责一致原则、目的明确原则、选择同意原则、最少够用原则、确保安全原则、主体参与原则、公开透明原则等。同时，我们承诺，我们将按业界成熟的安全标准，采取相应的安全保护措施来保护您的个人信息。\n请在使用我们的产品（或服务）前，仔细阅读并了解本《隐私权政策》。\n二、 本软件服务条款的确认和接纳\n1.本软件各项服务的所有权和运作权归宠物世界拥有。\n2.如果您在18周岁以下，您必须在父母或监护人的监护参与下才能使用本软件的各种功能。\n3.如您已阅读并同意《宠物世界服务协议》成功注册后，即可以享受宠物世界宠物临时寄存服务。通过参与宠物世界定期及不定期举行的活动，都将获得相应的积分奖励。您的参加的活动越多，达成目标越多，获得的积分值也将更多。积分不仅可以兑换宠物世界礼品，还可以享受更多的会员服务。\n三、 隐私保护\n1.保护用户隐私是本软件的一项基本义务。“隐私”是指用户在账号验证时提供给本软件的个人身份信息，包括用户提交的姓名、性别、联系方式、家庭住址、地理位置、证件号码等，以及验证通过后使用本软件后产生的服务等信息。本软件保证不对外公开或向第三方提供用户资料及用户在使用网络服务时存储在本软件的非公开内容，但下列情况除外：\n（1）用户或用户监护人授权本软件披露的；\n（2）应用户监护人的合法要求而提供用户个人身份信息时；\n（3）有关法律要求本软件披露的；\n（4）司法机关或行政机关基于法律程序要求本软件提供的；\n（5）本软件为了维护自己合法权益而向用户提起诉讼或者仲裁时；\n（6）本软件出于软件正常使用、学术交流及讨论的目的时。\n2.本软件可能会与第三方合作为用户提供相关的网络服务，在此情况下，如该第三方同意承担与本软件同等的保护用户隐私的责任，则本软件可将用户的注册资料（包括姓名、性别、个人有效身份证件号码、联系方式、家庭住址、地理位置等）提供给该第三方。\n3.在不透露单个用户隐私资料的前提下，本软件有权对整个用户数据库进行分析并对用户数据进行商业上的应用。\n四、我们如何保护您的个人信息\n1.我们已使用符合业界标准的安全防护措施保护您提供的个人信息，防止数据遭到未经授权访问、公开披露、使用、修改、损坏或丢失。我们会采取一切合理可行的措施，保护您的个人信息。例如，在您的手机与“服务”之间交换数据（如交易信息）时受 SSL 加密保护；我们同时对服务提供 https 安全访问方式；我们会使用加密技术确保数据的保密性；我们会使用受信赖的保护机制防止数据遭到恶意攻击；我们会部署访问控制机制，确保只有授权人员才可访问个人信息；以及我们会举办安全和隐私保护培训课程，加强员工对于保护个人信息重要性的认识。\n2.我们会采取一切合理可行的措施，确保未收集无关的个人信息。我们只会在达成本政策所述目的所需的期限内保留您的个人信息，除非需要延长保留期或受到法律的允许。 \n3.互联网并非绝对安全的环境，而且电子邮件、即时通讯、及与其他我们用户的交流方式并未加密，我们强烈建议您不要通过此类方式发送个人信息。请使用复杂密码，协助我们保证您的账号安全。 \n4.互联网环境并非百分之百安全，我们将尽力确保或担保您发送给我们的任何信息的安全性。如果我们的物理、技术、或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改、或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。 \n5.在不幸发生个人信息安全事件后，我们将按照法律法规的要求，及时向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。我们将及时将事件相关情况以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。 同时，我们还将按照监管部门要求，主动上报个人信息安全事件的处置情况。\n五、您的权利\n按照中国相关的法律、法规、标准，以及其他国家、地区的通行做法，我们保障您对自己的个人信息行使以下权利： \n1.访问您的个人信息：您有权访问您的个人信息，法律法规规定的例外情况除外。如果您想行使数据访问权，可以通过查询用户中心方式自行访问： \n2.账户信息：如果您希望访问或编辑您的账户中的个人资料信息和支付信息、更改您的密码、添加安全信息或关闭您的账户等，您可以通过访问用户中心执行此类操作。 \n3.搜索信息：您可以在用户中心中访问或清除您的搜索历史记录、查看和修改个人使用记录、浏览记录及管理其他数据。 如果您无法通过上述链接访问这些个人信息，发送电子邮件至chenzuoli709@163.com。我们将在30天内回复您的访问请求。 对于您在使用我们的产品或服务过程中产生的其他个人信息，只要我们不需要过多投入，我们会向您提供。如果您想行使数据访问权，请发送电子邮件至【chenzuoli709@163.com】。 \n4.更正您的个人信息：当您发现我们处理的关于您的个人信息有错误时，您有权要求我们做出更正。您可以通过“（一）访问您的个人信息”中罗列的方式提出更正申请。 如果您无法通过上述链接更正这些个人信息，您可以随时使用我们联系，或发送电子邮件至chenzuoli709@163.com。我们将在30天内回复您的更正请求。 \n5.删除您的个人信息：在以下情形中，您可以向我们提出删除个人信息的请求：\na.如果我们处理个人信息的行为违反法律法规；\nb.如果我们收集、使用您的个人信息，却未征得您的同意； \nc.如果我们处理个人信息的行为违反了与您的约定； \nd.如果您不再使用我们的产品或服务，或您注销了账号； \ne.如果我们不再为您提供产品或服务。 若我们决定响应您的删除请求，我们还将同时通知从我们获得您的个人信息的实体，要求其及时删除，除非法律法规另有规定，或这些实体获得您的独立授权。 当您从我们的服务中删除信息后，我们可能不会立即备份系统中删除相应的信息，但会在备份更新时删除这些信息。 \n6.改变您授权同意的范围：每个业务功能需要一些基本的个人信息才能得以完成（见本策略“第一部分”）。对于额外收集的个人信息的收集和使用，您可以随时给予或收回您的授权同意。 您可以通过以下方式自行操作：  当您收回同意后，我们将不再处理相应的个人信息。但您收回同意的决定，不会影响此前基于您的授权而开展的个人信息处理。 如果您不想接受我们给您发送的商业广告，您随时可通过以下方式取消。\n7.个人信息主体注销账户：您随时可注销此前注册的账户，您可以通过联系我们的方式进行注销操作。在注销账户之后，我们将停止为您提供产品或服务，并依据您的要求，删除您的个人信息，法律法规另有规定的除外。 \n8.个人信息主体获取个人信息副本：您有权获取您的个人信息副本，您可以通过联系我们获取，在技术可行的前提下，例如数据接口匹配，我们还可按您的要求，直接将您的个人信息副本传输给您指定的第三方。 \n9.约束信息系统自动决策：在某些业务功能中，我们可能仅依据信息系统、算法等在内的非人工自动决策机制做出决定。如果这些决定显著影响您的合法权益，您有权要求我们做出解释，我们也将提供适当的救济方式。 \n10.响应您的上述请求：为保障安全，您可能需要提供书面请求，或以其他方式证明您的身份。我们可能会先要求您验证自己的身份，然后再处理您的请求。 我们将在三十天内做出答复。如您不满意，还可以通过联系我们邮箱发送反馈内容。对于您合理的请求，我们原则上不收取费用，但对多次重复、超出合理限度的请求，我们将视情收取一定成本费用。对于那些无端重复、需要过多技术手段（例如，需要开发新系统或从根本上改变现行惯例）、给他人合法权益带来风险或者非常不切实际（例如，涉及备份磁带上存放的信息）的请求，我们可能会予以拒绝。 在以下情形中，按照法律法规要求，我们将无法响应您的请求： \na.与国家安全、国防安全有关的； \nb.与公共安全、公共卫生、重大公共利益有关的； \nc.与犯罪侦查、起诉和审判等有关的； \nd.有充分证据表明您存在主观恶意或滥用权利的； \ne.响应您的请求将导致您或其他个人、组织的合法权益受到严重损害的。\n六、 免责声明\n1.郑重提醒使用者：本软件所提供的所有信息仅供参考，不做个别诊断、用药和使用的依据，一切因使用本软件而造成的任何意外、损失或损害，均由信息使用方自行负责，本软件概不负责，亦不承担任何直接的、间接的、特殊的、连带的法律责任。此外，本软件致力于提供正确、完整的健康及医疗信息，但不保证信息的正确性、准确性、可靠性、时效性和完整性，不对信息做出任何种类的保证，信息也许已经过期，本软件不承诺予以定期、及时地更新。\n2.本软件所刊载的各类形式（包括但不限于文字、图片、图表）的作品（包括广告等）仅供参考，并不代表本软件同意其说法或描述，也不构成任何方面的建议。对于用户根据本软件提供的信息所做出的一切行为，除非另有明确的书面承诺文件，否则本软件不承担任何形式的责任。\n3.凡在本软件登记注册的用户，须自行负责对您的账号和密码保密的责任，且须对您的账号和密码下所发生的所有活动承担全部责任。\n4.权利人自愿同意不做任何妨碍或者破坏服务（或与服务链接的服务器及网络）的任何活动。若因散布谣言、造假、谩骂等原因而被禁止本软件对其服务的，本软件均免责。\n5.当政府部门、司法机关等依照法定程序要求本软件披露个人资料时，本软件将根据执法单位之要求或为公共安全之目的提供个人资料。在此情况下之任何披露，本软件均免责。\n6.由于与本软件链接的其他软件或网页所造成的个人资料泄露及由此而导致的任何法律争议和后果，本软件均免责。\n7.由于用户将个人密码告知他人或与他人共享注册账户，由此导致的任何个人资料泄露，本软件均免责。\n8.任何由于黑客攻击、计算机病毒侵入或发作、因政府管制而造成的暂时性关闭等影响网络正常运营的不可抗力造成的个人资料泄露、丢失、被盗用或被篡改等，本软件均免责。\n9.除本软件注明的服务条款外，其他一切因使用本软件导致的任何意外、疏忽、诽谤、版权或知识产权侵犯及其所造成的损失（包括因下载而感染手机病毒），本软件不承担任何法律责任。\n10.用户自行同意本软件可自行更新、升级或关闭，而无需经过您的同意。您可在任何时候停止使用本款软件，无需提出任何特别通知。\n11.用户明确同意对本软件服务的使用承担全部风险，并对因其使用本软件服务而产生的一切后果承担全部风险，本软件明确表示对用户不做任何类型的担保，也不承担任何责任，但是对商业性的隐含担保，特定目的和不违反规定的适当担保除外。本软件不承担网络服务一定能满足用户的要求，也不担保网络服务不会中断，对服务的连续性、及时性、安全性、准确性都不做担保。对于因不可抗力或本软件不能避免或控制的原因及其他原因造成的网络服务中断或其他缺陷，本软件不承担任何责任。\n七、 法律责任\n1.凡以任何方式登录本软件或直接、间接使用本软件者，均视为自愿同意本软件声明的约束。\n2.本声明未涉及的问题参见中华人民共和国有关法律法规，当本声明与中华人民共和国法律法规冲突时，以中华人民共和国法律法规为准。\n八、 版权声明\n本软件受《中华人民共和国著作权法》、《计算机软件保护条例》和相关的国际条约以及其他的法律法规保护，任何单位和个人未经授权不能拷贝、制作、修改、破解、出售、交易、转售、再发布本软件及其任何部分，或对本软件或本软件的任何部分创作衍生作品，进行反工程、反编辑或试图从本软件或本软件的任何部分提取源代码，但法律明确允许或要求的或本软件特别授权您的除外。否则将视为非法侵害，我们将保留依法追究其责任的权利。\n九、 服务条款的修改\n本软件有权在必要时修改服务条款，本软件服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本软件信息服务。如果用户继续享用本软件信息服务，则视为接受服务条款的变动。本软件保留随时修改或中断服务。\n十、 法律适用与司法管辖\n本协议之效力、解释、执行和争议的解决均适用中华人民共和国之法律。如本协议之任何一部分与中华人民共和国法律相抵触，则该部分条款应按有关法律规定重新解释，部分条款之无效或重新解释不影响其他条款之法律效力。您和本软件运营方一致同意凡因本协议所产生的纠纷双方应协商解决。协商不成时，任何一方可提交本软件运营方所在地法院诉讼裁决。\n\n\n派克公司\n', '2.1.8', '2020-04-05 19:15:01', '2020-04-05 19:15:01');


create table if not exists log(
  id int primary key auto_increment comment '自增主键',
  phone varchar(100) comment '用户手机号',
  open_id varchar(100) comment '微信open_id',
  union_id varchar(100) comment '微信union_id',
  longitude varchar(100) comment '径度',
  latitude varchar(100) comment '纬度',
  page_id varchar(250) comment '页面id',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime comment '更新时间'
) comment '浏览日志表' default charset='utf8'
;

create table if not exists petcage_book(
  id int primary key auto_increment comment '自增主键',
  open_id varchar(100) comment '用户open_id',
  device_id varchar(100) comment '设备id',
  book_start_time datetime comment '预定开始时间',
  book_end_time datetime comment '预定结束时间',
  line_index int default 1 comment '你所在当前排队位置',
  create_time datetime default current_timestamp comment '创建时间',
  update_time datetime default current_timestamp comment '更新时间'
)
