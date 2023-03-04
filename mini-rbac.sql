/*
 Navicat Premium Data Transfer

 Source Server         : mysql-master
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : mini-rbac

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 04/03/2023 14:05:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aerich
-- ----------------------------
DROP TABLE IF EXISTS `aerich`;
CREATE TABLE `aerich` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `app` varchar(100) NOT NULL,
  `content` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of aerich
-- ----------------------------
BEGIN;
INSERT INTO `aerich` VALUES (1, '0_20221210155940_init.py', 'models', '{\"models.Menu\": {\"app\": \"models\", \"name\": \"models.Menu\", \"table\": \"sys_menu\", \"indexes\": [[\"type\", \"name\"]], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"name\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"icon\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"icon\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": \"菜单图标\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"path\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"path\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"菜单url\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"type\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"type\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"菜单类型 0目录 1组件 2按钮 3数据\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"component\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"component\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"组件地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"pid\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"pid\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": -2147483648, \"le\": 2147483647}, \"description\": \"父id\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"identifier\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"identifier\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 30}, \"description\": \"权限标识 user:add\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(30)\"}}, {\"name\": \"api\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"api\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"接口地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"method\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"method\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"接口请求方式\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}], \"description\": \"菜单表\", \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Role\": {\"app\": \"models\", \"name\": \"models.Role\", \"table\": \"sys_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_name\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"role_name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"角色名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}, {\"name\": \"desc\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"desc\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 60}, \"description\": \"描述\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(60)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}, {\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.User\": {\"app\": \"models\", \"name\": \"models.User\", \"table\": \"sys_user\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"username\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"username\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"账号\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"password\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"password\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"密码\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"nickname\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"nickname\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"昵称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Aerich\": {\"app\": \"models\", \"name\": \"models.Aerich\", \"table\": \"aerich\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"version\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"version\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 255}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(255)\"}}, {\"name\": \"app\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"app\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"content\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"content\", \"docstring\": null, \"generated\": false, \"field_type\": \"JSONField\", \"constraints\": {}, \"description\": null, \"python_type\": \"Union[dict, list]\", \"db_field_types\": {\"\": \"JSON\", \"mssql\": \"NVARCHAR(MAX)\", \"oracle\": \"NCLOB\", \"postgres\": \"JSONB\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.RoleMenu\": {\"app\": \"models\", \"name\": \"models.RoleMenu\", \"table\": \"sys_role_menu\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}, {\"name\": \"menu\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"menu_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Menu\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"menu_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"menu_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.UserRole\": {\"app\": \"models\", \"name\": \"models.UserRole\", \"table\": \"sys_user_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"user\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"user_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.User\", \"db_constraint\": true}, {\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"user_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"user_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}}');
INSERT INTO `aerich` VALUES (2, '1_20221217130453_update_password_len.py', 'models', '{\"models.Menu\": {\"app\": \"models\", \"name\": \"models.Menu\", \"table\": \"sys_menu\", \"indexes\": [[\"type\", \"name\"]], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"name\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"icon\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"icon\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": \"菜单图标\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"path\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"path\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"菜单url\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"type\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"type\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"菜单类型 0目录 1组件 2按钮 3数据\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"component\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"component\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"组件地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"pid\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"pid\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": -2147483648, \"le\": 2147483647}, \"description\": \"父id\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"identifier\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"identifier\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 30}, \"description\": \"权限标识 user:add\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(30)\"}}, {\"name\": \"api\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"api\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"接口地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"method\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"method\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"接口请求方式\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}], \"description\": \"菜单表\", \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Role\": {\"app\": \"models\", \"name\": \"models.Role\", \"table\": \"sys_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_name\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"role_name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"角色名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}, {\"name\": \"desc\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"desc\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 60}, \"description\": \"描述\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(60)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}, {\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.User\": {\"app\": \"models\", \"name\": \"models.User\", \"table\": \"sys_user\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"username\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"username\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"账号\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"password\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"password\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"密码\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"nickname\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"nickname\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"昵称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Aerich\": {\"app\": \"models\", \"name\": \"models.Aerich\", \"table\": \"aerich\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"version\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"version\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 255}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(255)\"}}, {\"name\": \"app\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"app\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"content\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"content\", \"docstring\": null, \"generated\": false, \"field_type\": \"JSONField\", \"constraints\": {}, \"description\": null, \"python_type\": \"Union[dict, list]\", \"db_field_types\": {\"\": \"JSON\", \"mssql\": \"NVARCHAR(MAX)\", \"oracle\": \"NCLOB\", \"postgres\": \"JSONB\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.RoleMenu\": {\"app\": \"models\", \"name\": \"models.RoleMenu\", \"table\": \"sys_role_menu\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}, {\"name\": \"menu\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"menu_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Menu\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"menu_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"menu_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.UserRole\": {\"app\": \"models\", \"name\": \"models.UserRole\", \"table\": \"sys_user_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"user\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"user_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.User\", \"db_constraint\": true}, {\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"user_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"user_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}}');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '状态 1有效 9 删除 5选中',
  `created` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modified` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `path` varchar(128) DEFAULT NULL COMMENT '菜单url',
  `type` smallint NOT NULL COMMENT '菜单类型 0目录 1组件 2按钮 3数据',
  `component` varchar(128) DEFAULT NULL COMMENT '组件地址',
  `pid` int DEFAULT NULL COMMENT '父id',
  `identifier` varchar(30) DEFAULT NULL COMMENT '权限标识 user:add',
  `api` varchar(128) DEFAULT NULL COMMENT '接口地址',
  `method` varchar(10) DEFAULT NULL COMMENT '接口请求方式',
  PRIMARY KEY (`id`),
  KEY `idx_sys_menu_type_a01aeb` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 1, '2022-12-10 08:00:03.535280', '2022-12-10 16:00:34.031682', '系统面板', 'DashboardOutlined', '/dashboard', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, 1, '2022-12-10 08:00:03.554871', '2022-12-10 16:00:36.047965', '系统管理', 'AppstoreOutlined', '/system', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, 1, '2022-12-10 08:00:03.568802', '2022-12-31 15:04:16.362715', '用户管理', 'TeamOutlined', '/system/user', 1, '/system/user', 2, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (4, 1, '2022-12-10 08:00:03.576369', '2022-12-31 15:04:10.348238', '角色管理', 'UserOutlined', '/system/role', 1, '/system/role', 2, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (5, 1, '2022-12-10 08:00:03.584679', '2022-12-31 15:04:27.091573', '菜单管理', 'MenuOutlined', '/system/menu', 1, '/system/menu', 2, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, 1, '2022-12-10 08:00:03.591957', '2022-12-31 15:04:39.075923', '数据面板', 'AreaChartOutlined', '/dashboard/index', 1, '/dashboard/index', 1, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, 1, '2022-12-10 08:00:03.599549', '2022-12-10 08:00:03.599557', '用户详情', NULL, NULL, 3, NULL, 3, 'user:get', '/user/{pk}', 'GET');
INSERT INTO `sys_menu` VALUES (8, 1, '2022-12-10 08:00:03.606295', '2022-12-10 08:00:03.606303', '用户列表', NULL, NULL, 3, NULL, 3, NULL, '/user', 'GET');
INSERT INTO `sys_menu` VALUES (9, 1, '2022-12-10 08:00:03.613573', '2022-12-10 08:00:03.613581', '用户查询', NULL, NULL, 2, NULL, 3, 'user:query', '/user/query', 'POST');
INSERT INTO `sys_menu` VALUES (10, 1, '2022-12-10 08:00:03.620625', '2022-12-10 08:00:03.620633', '用户新增', NULL, NULL, 2, NULL, 3, 'user:create', '/user', 'POST');
INSERT INTO `sys_menu` VALUES (11, 1, '2022-12-10 08:00:03.627710', '2022-12-10 08:00:03.627718', '用户删除', NULL, NULL, 2, NULL, 3, 'user:delete', '/user/{pk}', 'DELETE');
INSERT INTO `sys_menu` VALUES (12, 1, '2022-12-10 08:00:03.634962', '2022-12-10 08:00:03.634970', '用户更新', NULL, NULL, 2, NULL, 3, 'user:update', '/user/{pk}', 'PUT');
INSERT INTO `sys_menu` VALUES (13, 1, '2022-12-10 08:00:03.641954', '2022-12-10 08:00:03.641962', '查询角色拥有权限', NULL, NULL, 3, NULL, 4, NULL, '/role/{rid}/menus', 'GET');
INSERT INTO `sys_menu` VALUES (14, 1, '2022-12-10 08:00:03.649696', '2022-12-10 08:00:03.649703', '角色列表', NULL, NULL, 3, NULL, 4, NULL, '/role', 'GET');
INSERT INTO `sys_menu` VALUES (15, 1, '2022-12-10 08:00:03.657341', '2022-12-10 08:00:03.657349', '角色查询', NULL, NULL, 2, NULL, 4, 'role:query', '/role/query', 'POST');
INSERT INTO `sys_menu` VALUES (16, 1, '2022-12-10 08:00:03.663807', '2022-12-10 08:00:03.663815', '角色新增', NULL, NULL, 2, NULL, 4, 'role:create', '/role', 'POST');
INSERT INTO `sys_menu` VALUES (17, 1, '2022-12-10 08:00:03.669734', '2022-12-10 08:00:03.669742', '角色删除', NULL, NULL, 2, NULL, 4, 'role:delete', '/role/{pk}', 'DELETE');
INSERT INTO `sys_menu` VALUES (18, 1, '2022-12-10 08:00:03.677116', '2022-12-10 08:00:03.677124', '角色更新', NULL, NULL, 2, NULL, 4, 'role:update', '/role/{pk}', 'PUT');
INSERT INTO `sys_menu` VALUES (19, 1, '2022-12-10 08:00:03.684101', '2022-12-10 16:38:48.650686', '菜单列表', NULL, NULL, 3, NULL, 5, NULL, '/menu', 'GET');
INSERT INTO `sys_menu` VALUES (20, 1, '2022-12-10 08:00:03.691507', '2022-12-10 16:38:45.581031', '菜单新增', NULL, NULL, 2, NULL, 5, 'menu:create', '/menu', 'POST');
INSERT INTO `sys_menu` VALUES (21, 1, '2022-12-10 08:00:03.699054', '2022-12-10 16:38:42.978101', '菜单更新', NULL, NULL, 2, NULL, 5, 'menu:update', '/menu/{pk}', 'PUT');
INSERT INTO `sys_menu` VALUES (22, 1, '2022-12-10 08:00:03.706160', '2022-12-10 16:38:52.030640', '菜单删除', NULL, NULL, 2, NULL, 5, 'menu:delete', '/menu/{pk}', 'DELETE');
INSERT INTO `sys_menu` VALUES (23, 9, '2022-12-10 08:02:32.067721', '2022-12-10 08:02:48.128227', 'string', 'string', 'string', 32767, 'string', 2147483647, 'string', 'string', 'string');
INSERT INTO `sys_menu` VALUES (24, 1, '2023-02-25 05:42:15.565017', '2023-02-25 05:42:15.565026', '123', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (25, 1, '2023-02-25 06:03:37.637748', '2023-02-25 06:03:37.637768', '123123', 'BugTwoTone', '1313', 3, '123123', 7, '123123', '12313', 'GET');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '状态 1有效 9 删除 5选中',
  `created` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modified` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `role_name` varchar(10) NOT NULL COMMENT '角色名称',
  `desc` varchar(60) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_role_na_e4636f` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 1, '2022-12-16 13:30:21.888555', '2023-03-04 13:49:33.270173', '管理员', '所有权限');
INSERT INTO `sys_role` VALUES (3, 1, '2022-12-17 05:05:40.592061', '2023-03-04 05:57:26.475815', '菜单管理员', '仅有菜单管理权限');
INSERT INTO `sys_role` VALUES (4, 1, '2023-02-19 05:04:42.357376', '2023-03-04 05:58:20.127280', '角色管理员', '仅有角色相关权限');
INSERT INTO `sys_role` VALUES (5, 9, '2023-02-19 06:19:57.389387', '2023-02-19 15:23:43.889882', '321', '123');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '状态 1有效 9 删除 5选中',
  `created` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modified` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `menu_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sys_role_sys_menu_a6b431d9` (`menu_id`),
  KEY `fk_sys_role_sys_role_077af6b8` (`role_id`),
  CONSTRAINT `fk_sys_role_sys_menu_a6b431d9` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_role_sys_role_077af6b8` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 9, '2022-12-16 13:30:21.905150', '2023-03-04 13:49:33.274173', 1, 1);
INSERT INTO `sys_role_menu` VALUES (2, 9, '2022-12-16 13:30:21.913091', '2023-03-04 13:49:33.274173', 2, 1);
INSERT INTO `sys_role_menu` VALUES (3, 9, '2022-12-16 13:30:21.917443', '2023-03-04 13:49:33.274173', 3, 1);
INSERT INTO `sys_role_menu` VALUES (4, 9, '2022-12-16 13:30:21.921970', '2023-03-04 13:49:33.274173', 4, 1);
INSERT INTO `sys_role_menu` VALUES (5, 9, '2022-12-16 13:30:21.925749', '2023-03-04 13:49:33.274173', 5, 1);
INSERT INTO `sys_role_menu` VALUES (6, 9, '2022-12-16 13:30:21.931043', '2023-03-04 13:49:33.274173', 6, 1);
INSERT INTO `sys_role_menu` VALUES (12, 9, '2022-12-16 13:40:31.257868', '2023-03-04 13:49:33.274173', 7, 1);
INSERT INTO `sys_role_menu` VALUES (13, 9, '2022-12-17 05:05:40.612249', '2023-02-19 06:37:50.186313', 1, 3);
INSERT INTO `sys_role_menu` VALUES (14, 9, '2022-12-17 05:05:40.628384', '2023-02-19 06:37:50.186313', 5, 3);
INSERT INTO `sys_role_menu` VALUES (15, 9, '2022-12-17 05:05:40.632286', '2023-02-19 06:37:50.186313', 7, 3);
INSERT INTO `sys_role_menu` VALUES (16, 9, '2022-12-17 05:05:40.636893', '2023-02-19 06:37:50.186313', 10, 3);
INSERT INTO `sys_role_menu` VALUES (17, 9, '2022-12-17 05:05:40.641597', '2023-03-04 13:49:33.274173', 20, 1);
INSERT INTO `sys_role_menu` VALUES (18, 9, '2023-02-19 05:04:42.368021', '2023-02-19 14:34:40.426431', 1, 4);
INSERT INTO `sys_role_menu` VALUES (19, 9, '2023-02-19 05:04:42.383649', '2023-02-19 14:34:40.426431', 6, 4);
INSERT INTO `sys_role_menu` VALUES (20, 9, '2023-02-19 05:04:42.385674', '2023-02-19 14:34:40.426431', 14, 4);
INSERT INTO `sys_role_menu` VALUES (21, 9, '2023-02-19 05:04:42.387827', '2023-02-19 14:34:40.426431', 15, 4);
INSERT INTO `sys_role_menu` VALUES (22, 9, '2023-02-19 05:04:42.389820', '2023-02-19 14:34:40.426431', 16, 4);
INSERT INTO `sys_role_menu` VALUES (23, 9, '2023-02-19 05:04:42.392441', '2023-02-19 14:34:40.426431', 17, 4);
INSERT INTO `sys_role_menu` VALUES (24, 9, '2023-02-19 05:04:42.396972', '2023-02-19 14:34:40.426431', 18, 4);
INSERT INTO `sys_role_menu` VALUES (25, 9, '2023-02-19 06:19:57.400169', '2023-02-19 14:31:03.027435', 2, 5);
INSERT INTO `sys_role_menu` VALUES (26, 9, '2023-02-19 06:19:57.408648', '2023-02-19 14:31:03.027435', 3, 5);
INSERT INTO `sys_role_menu` VALUES (27, 9, '2023-02-19 06:19:57.416942', '2023-02-19 14:31:03.027435', 4, 5);
INSERT INTO `sys_role_menu` VALUES (28, 9, '2023-02-19 06:19:57.423660', '2023-02-19 14:31:03.027435', 5, 5);
INSERT INTO `sys_role_menu` VALUES (29, 9, '2023-02-19 06:19:57.430936', '2023-02-19 14:31:03.027435', 7, 5);
INSERT INTO `sys_role_menu` VALUES (30, 9, '2023-02-19 06:19:57.436773', '2023-02-19 14:31:03.027435', 8, 5);
INSERT INTO `sys_role_menu` VALUES (31, 9, '2023-02-19 06:19:57.442914', '2023-02-19 14:31:03.027435', 9, 5);
INSERT INTO `sys_role_menu` VALUES (32, 9, '2023-02-19 06:19:57.446847', '2023-02-19 14:31:03.027435', 10, 5);
INSERT INTO `sys_role_menu` VALUES (33, 9, '2023-02-19 06:19:57.449870', '2023-02-19 14:31:03.027435', 11, 5);
INSERT INTO `sys_role_menu` VALUES (34, 9, '2023-02-19 06:19:57.452396', '2023-02-19 14:31:03.027435', 12, 5);
INSERT INTO `sys_role_menu` VALUES (35, 9, '2023-02-19 06:19:57.457270', '2023-02-19 14:31:03.027435', 13, 5);
INSERT INTO `sys_role_menu` VALUES (36, 9, '2023-02-19 06:19:57.463041', '2023-02-19 14:31:03.027435', 14, 5);
INSERT INTO `sys_role_menu` VALUES (37, 9, '2023-02-19 06:19:57.465709', '2023-02-19 14:31:03.027435', 15, 5);
INSERT INTO `sys_role_menu` VALUES (38, 9, '2023-02-19 06:19:57.471744', '2023-02-19 14:31:03.027435', 16, 5);
INSERT INTO `sys_role_menu` VALUES (39, 9, '2023-02-19 06:19:57.475463', '2023-02-19 14:31:03.027435', 17, 5);
INSERT INTO `sys_role_menu` VALUES (40, 9, '2023-02-19 06:19:57.478249', '2023-02-19 14:31:03.027435', 18, 5);
INSERT INTO `sys_role_menu` VALUES (41, 9, '2023-02-19 06:19:57.481180', '2023-02-19 14:31:03.027435', 19, 5);
INSERT INTO `sys_role_menu` VALUES (42, 9, '2023-02-19 06:19:57.484862', '2023-02-19 14:31:03.027435', 20, 5);
INSERT INTO `sys_role_menu` VALUES (43, 9, '2023-02-19 06:19:57.487969', '2023-02-19 14:31:03.027435', 21, 5);
INSERT INTO `sys_role_menu` VALUES (44, 9, '2023-02-19 06:19:57.494533', '2023-02-19 14:31:03.027435', 22, 5);
INSERT INTO `sys_role_menu` VALUES (45, 9, '2023-02-19 06:31:03.032320', '2023-02-19 14:31:22.017950', 2, 5);
INSERT INTO `sys_role_menu` VALUES (46, 9, '2023-02-19 06:31:03.037403', '2023-02-19 14:31:22.017950', 3, 5);
INSERT INTO `sys_role_menu` VALUES (47, 9, '2023-02-19 06:31:03.041666', '2023-02-19 14:31:22.017950', 4, 5);
INSERT INTO `sys_role_menu` VALUES (48, 9, '2023-02-19 06:31:03.047191', '2023-02-19 14:31:22.017950', 5, 5);
INSERT INTO `sys_role_menu` VALUES (49, 9, '2023-02-19 06:31:03.052582', '2023-02-19 14:31:22.017950', 7, 5);
INSERT INTO `sys_role_menu` VALUES (50, 9, '2023-02-19 06:31:03.059084', '2023-02-19 14:31:22.017950', 8, 5);
INSERT INTO `sys_role_menu` VALUES (51, 9, '2023-02-19 06:31:03.066443', '2023-02-19 14:31:22.017950', 9, 5);
INSERT INTO `sys_role_menu` VALUES (52, 9, '2023-02-19 06:31:03.072141', '2023-02-19 14:31:22.017950', 10, 5);
INSERT INTO `sys_role_menu` VALUES (53, 9, '2023-02-19 06:31:03.078314', '2023-02-19 14:31:22.017950', 11, 5);
INSERT INTO `sys_role_menu` VALUES (54, 9, '2023-02-19 06:31:03.082292', '2023-02-19 14:31:22.017950', 12, 5);
INSERT INTO `sys_role_menu` VALUES (55, 9, '2023-02-19 06:31:03.086382', '2023-02-19 14:31:22.017950', 13, 5);
INSERT INTO `sys_role_menu` VALUES (56, 9, '2023-02-19 06:31:03.090191', '2023-02-19 14:31:22.017950', 14, 5);
INSERT INTO `sys_role_menu` VALUES (57, 9, '2023-02-19 06:31:03.097777', '2023-02-19 14:31:22.017950', 15, 5);
INSERT INTO `sys_role_menu` VALUES (58, 9, '2023-02-19 06:31:03.102135', '2023-02-19 14:31:22.017950', 16, 5);
INSERT INTO `sys_role_menu` VALUES (59, 9, '2023-02-19 06:31:03.105605', '2023-02-19 14:31:22.017950', 17, 5);
INSERT INTO `sys_role_menu` VALUES (60, 9, '2023-02-19 06:31:03.108729', '2023-02-19 14:31:22.017950', 18, 5);
INSERT INTO `sys_role_menu` VALUES (61, 9, '2023-02-19 06:31:03.112630', '2023-02-19 14:31:22.017950', 19, 5);
INSERT INTO `sys_role_menu` VALUES (62, 9, '2023-02-19 06:31:03.116093', '2023-02-19 14:31:22.017950', 20, 5);
INSERT INTO `sys_role_menu` VALUES (63, 9, '2023-02-19 06:31:03.120685', '2023-02-19 14:31:22.017950', 21, 5);
INSERT INTO `sys_role_menu` VALUES (64, 9, '2023-02-19 06:31:03.127175', '2023-02-19 14:31:22.017950', 22, 5);
INSERT INTO `sys_role_menu` VALUES (65, 9, '2023-02-19 06:31:03.134282', '2023-02-19 14:31:22.017950', 1, 5);
INSERT INTO `sys_role_menu` VALUES (66, 9, '2023-02-19 06:31:03.139022', '2023-02-19 14:31:22.017950', 6, 5);
INSERT INTO `sys_role_menu` VALUES (67, 9, '2023-02-19 06:31:22.021782', '2023-02-19 14:33:57.449171', 4, 5);
INSERT INTO `sys_role_menu` VALUES (68, 9, '2023-02-19 06:31:22.025877', '2023-02-19 14:33:57.449171', 5, 5);
INSERT INTO `sys_role_menu` VALUES (69, 9, '2023-02-19 06:31:22.031121', '2023-02-19 14:33:57.449171', 12, 5);
INSERT INTO `sys_role_menu` VALUES (70, 9, '2023-02-19 06:31:22.034987', '2023-02-19 14:33:57.449171', 13, 5);
INSERT INTO `sys_role_menu` VALUES (71, 9, '2023-02-19 06:31:22.038140', '2023-02-19 14:33:57.449171', 14, 5);
INSERT INTO `sys_role_menu` VALUES (72, 9, '2023-02-19 06:31:22.043265', '2023-02-19 14:33:57.449171', 15, 5);
INSERT INTO `sys_role_menu` VALUES (73, 9, '2023-02-19 06:31:22.048417', '2023-02-19 14:33:57.449171', 16, 5);
INSERT INTO `sys_role_menu` VALUES (74, 9, '2023-02-19 06:31:22.051780', '2023-02-19 14:33:57.449171', 17, 5);
INSERT INTO `sys_role_menu` VALUES (75, 9, '2023-02-19 06:31:22.055241', '2023-02-19 14:33:57.449171', 18, 5);
INSERT INTO `sys_role_menu` VALUES (76, 9, '2023-02-19 06:31:22.059509', '2023-02-19 14:33:57.449171', 19, 5);
INSERT INTO `sys_role_menu` VALUES (77, 9, '2023-02-19 06:31:22.063971', '2023-02-19 14:33:57.449171', 20, 5);
INSERT INTO `sys_role_menu` VALUES (78, 9, '2023-02-19 06:31:22.067782', '2023-02-19 14:33:57.449171', 21, 5);
INSERT INTO `sys_role_menu` VALUES (79, 9, '2023-02-19 06:31:22.071757', '2023-02-19 14:33:57.449171', 22, 5);
INSERT INTO `sys_role_menu` VALUES (80, 9, '2023-02-19 06:33:57.454495', '2023-02-19 14:34:20.250718', 1, 5);
INSERT INTO `sys_role_menu` VALUES (81, 9, '2023-02-19 06:33:57.467299', '2023-02-19 14:34:20.250718', 6, 5);
INSERT INTO `sys_role_menu` VALUES (82, 9, '2023-02-19 06:34:20.254336', '2023-02-19 06:37:28.655747', 2, 5);
INSERT INTO `sys_role_menu` VALUES (83, 9, '2023-02-19 06:34:20.260105', '2023-02-19 06:37:28.655747', 3, 5);
INSERT INTO `sys_role_menu` VALUES (84, 9, '2023-02-19 06:34:20.264539', '2023-02-19 06:37:28.655747', 4, 5);
INSERT INTO `sys_role_menu` VALUES (85, 9, '2023-02-19 06:34:20.268994', '2023-02-19 06:37:28.655747', 5, 5);
INSERT INTO `sys_role_menu` VALUES (86, 9, '2023-02-19 06:34:20.278022', '2023-02-19 06:37:28.655747', 7, 5);
INSERT INTO `sys_role_menu` VALUES (87, 9, '2023-02-19 06:34:20.282627', '2023-02-19 06:37:28.655747', 8, 5);
INSERT INTO `sys_role_menu` VALUES (88, 9, '2023-02-19 06:34:20.286202', '2023-02-19 06:37:28.655747', 9, 5);
INSERT INTO `sys_role_menu` VALUES (89, 9, '2023-02-19 06:34:20.291741', '2023-02-19 06:37:28.655747', 10, 5);
INSERT INTO `sys_role_menu` VALUES (90, 9, '2023-02-19 06:34:20.296669', '2023-02-19 06:37:28.655747', 11, 5);
INSERT INTO `sys_role_menu` VALUES (91, 9, '2023-02-19 06:34:20.302285', '2023-02-19 06:37:28.655747', 12, 5);
INSERT INTO `sys_role_menu` VALUES (92, 9, '2023-02-19 06:34:20.310273', '2023-02-19 06:37:28.655747', 13, 5);
INSERT INTO `sys_role_menu` VALUES (93, 9, '2023-02-19 06:34:20.318876', '2023-02-19 06:37:28.655747', 14, 5);
INSERT INTO `sys_role_menu` VALUES (94, 9, '2023-02-19 06:34:20.325913', '2023-02-19 06:37:28.655747', 15, 5);
INSERT INTO `sys_role_menu` VALUES (95, 9, '2023-02-19 06:34:20.331809', '2023-02-19 06:37:28.655747', 16, 5);
INSERT INTO `sys_role_menu` VALUES (96, 9, '2023-02-19 06:34:20.339231', '2023-02-19 06:37:28.655747', 17, 5);
INSERT INTO `sys_role_menu` VALUES (97, 9, '2023-02-19 06:34:20.347864', '2023-02-19 06:37:28.655747', 18, 5);
INSERT INTO `sys_role_menu` VALUES (98, 9, '2023-02-19 06:34:20.357995', '2023-02-19 06:37:28.655747', 19, 5);
INSERT INTO `sys_role_menu` VALUES (99, 9, '2023-02-19 06:34:20.364600', '2023-02-19 06:37:28.655747', 20, 5);
INSERT INTO `sys_role_menu` VALUES (100, 9, '2023-02-19 06:34:20.369650', '2023-02-19 06:37:28.655747', 21, 5);
INSERT INTO `sys_role_menu` VALUES (101, 9, '2023-02-19 06:34:20.377645', '2023-02-19 06:37:28.655747', 22, 5);
INSERT INTO `sys_role_menu` VALUES (102, 9, '2023-02-19 06:34:40.430998', '2023-02-19 15:23:59.739945', 1, 4);
INSERT INTO `sys_role_menu` VALUES (103, 9, '2023-02-19 06:34:40.436975', '2023-02-19 15:23:59.739945', 6, 4);
INSERT INTO `sys_role_menu` VALUES (104, 9, '2023-02-19 06:34:40.444839', '2023-02-19 15:23:59.739945', 22, 4);
INSERT INTO `sys_role_menu` VALUES (105, 9, '2023-02-19 06:37:28.659334', '2023-02-19 14:41:21.986464', 2, 5);
INSERT INTO `sys_role_menu` VALUES (106, 9, '2023-02-19 06:37:28.664396', '2023-02-19 14:41:21.986464', 3, 5);
INSERT INTO `sys_role_menu` VALUES (107, 9, '2023-02-19 06:37:28.670192', '2023-02-19 14:41:21.986464', 4, 5);
INSERT INTO `sys_role_menu` VALUES (108, 9, '2023-02-19 06:37:28.673781', '2023-02-19 14:41:21.986464', 5, 5);
INSERT INTO `sys_role_menu` VALUES (109, 9, '2023-02-19 06:37:28.679419', '2023-02-19 14:41:21.986464', 7, 5);
INSERT INTO `sys_role_menu` VALUES (110, 9, '2023-02-19 06:37:28.687202', '2023-02-19 14:41:21.986464', 8, 5);
INSERT INTO `sys_role_menu` VALUES (111, 1, '2023-02-19 06:37:28.693585', '2023-02-25 14:22:25.256397', 9, 5);
INSERT INTO `sys_role_menu` VALUES (112, 9, '2023-02-19 06:37:28.699644', '2023-02-19 14:41:21.986464', 10, 5);
INSERT INTO `sys_role_menu` VALUES (113, 9, '2023-02-19 06:37:28.703387', '2023-02-19 14:41:21.986464', 11, 5);
INSERT INTO `sys_role_menu` VALUES (114, 9, '2023-02-19 06:37:28.707310', '2023-02-19 14:41:21.986464', 12, 5);
INSERT INTO `sys_role_menu` VALUES (115, 9, '2023-02-19 06:37:28.712097', '2023-02-19 14:41:21.986464', 13, 5);
INSERT INTO `sys_role_menu` VALUES (116, 9, '2023-02-19 06:37:28.719082', '2023-02-19 14:41:21.986464', 14, 5);
INSERT INTO `sys_role_menu` VALUES (117, 9, '2023-02-19 06:37:28.722663', '2023-02-19 14:41:21.986464', 15, 5);
INSERT INTO `sys_role_menu` VALUES (118, 9, '2023-02-19 06:37:28.725485', '2023-02-19 14:41:21.986464', 16, 5);
INSERT INTO `sys_role_menu` VALUES (119, 9, '2023-02-19 06:37:28.729194', '2023-02-19 14:41:21.986464', 17, 5);
INSERT INTO `sys_role_menu` VALUES (120, 9, '2023-02-19 06:37:28.734181', '2023-02-19 14:41:21.986464', 18, 5);
INSERT INTO `sys_role_menu` VALUES (121, 9, '2023-02-19 06:37:28.738095', '2023-02-19 14:41:21.986464', 19, 5);
INSERT INTO `sys_role_menu` VALUES (122, 9, '2023-02-19 06:37:28.742166', '2023-02-19 14:41:21.986464', 20, 5);
INSERT INTO `sys_role_menu` VALUES (123, 9, '2023-02-19 06:37:28.746032', '2023-02-19 14:41:21.986464', 21, 5);
INSERT INTO `sys_role_menu` VALUES (124, 9, '2023-02-19 06:37:28.754050', '2023-02-19 14:41:21.986464', 22, 5);
INSERT INTO `sys_role_menu` VALUES (125, 9, '2023-02-19 06:37:28.759141', '2023-02-19 14:41:21.986464', 1, 5);
INSERT INTO `sys_role_menu` VALUES (126, 9, '2023-02-19 06:37:28.773755', '2023-02-19 14:41:21.986464', 6, 5);
INSERT INTO `sys_role_menu` VALUES (127, 9, '2023-02-19 06:37:50.191111', '2023-03-04 05:57:26.481651', 1, 3);
INSERT INTO `sys_role_menu` VALUES (128, 9, '2023-02-19 06:37:50.197777', '2023-03-04 05:57:26.481651', 6, 3);
INSERT INTO `sys_role_menu` VALUES (129, 9, '2023-02-19 06:37:50.208123', '2023-03-04 05:57:26.481651', 2, 3);
INSERT INTO `sys_role_menu` VALUES (130, 9, '2023-02-19 06:37:50.217266', '2023-03-04 05:57:26.481651', 3, 3);
INSERT INTO `sys_role_menu` VALUES (131, 9, '2023-02-19 06:37:50.221641', '2023-03-04 05:57:26.481651', 4, 3);
INSERT INTO `sys_role_menu` VALUES (132, 9, '2023-02-19 06:37:50.224776', '2023-03-04 05:57:26.481651', 5, 3);
INSERT INTO `sys_role_menu` VALUES (133, 9, '2023-02-19 06:37:50.230219', '2023-03-04 05:57:26.481651', 7, 3);
INSERT INTO `sys_role_menu` VALUES (134, 9, '2023-02-19 06:37:50.235238', '2023-03-04 05:57:26.481651', 8, 3);
INSERT INTO `sys_role_menu` VALUES (135, 9, '2023-02-19 06:37:50.239083', '2023-03-04 05:57:26.481651', 9, 3);
INSERT INTO `sys_role_menu` VALUES (136, 9, '2023-02-19 06:37:50.243590', '2023-03-04 05:57:26.481651', 10, 3);
INSERT INTO `sys_role_menu` VALUES (137, 9, '2023-02-19 06:37:50.249689', '2023-03-04 05:57:26.481651', 11, 3);
INSERT INTO `sys_role_menu` VALUES (138, 9, '2023-02-19 06:37:50.253447', '2023-03-04 05:57:26.481651', 12, 3);
INSERT INTO `sys_role_menu` VALUES (139, 9, '2023-02-19 06:37:50.256869', '2023-03-04 05:57:26.481651', 13, 3);
INSERT INTO `sys_role_menu` VALUES (140, 9, '2023-02-19 06:37:50.259863', '2023-03-04 05:57:26.481651', 14, 3);
INSERT INTO `sys_role_menu` VALUES (141, 9, '2023-02-19 06:37:50.265251', '2023-03-04 05:57:26.481651', 15, 3);
INSERT INTO `sys_role_menu` VALUES (142, 9, '2023-02-19 06:37:50.268962', '2023-03-04 05:57:26.481651', 16, 3);
INSERT INTO `sys_role_menu` VALUES (143, 9, '2023-02-19 06:37:50.271650', '2023-03-04 05:57:26.481651', 17, 3);
INSERT INTO `sys_role_menu` VALUES (144, 9, '2023-02-19 06:37:50.274506', '2023-03-04 05:57:26.481651', 18, 3);
INSERT INTO `sys_role_menu` VALUES (145, 9, '2023-02-19 06:37:50.277096', '2023-03-04 05:57:26.481651', 19, 3);
INSERT INTO `sys_role_menu` VALUES (146, 9, '2023-02-19 06:37:50.280555', '2023-03-04 05:57:26.481651', 20, 3);
INSERT INTO `sys_role_menu` VALUES (147, 9, '2023-02-19 06:37:50.284735', '2023-03-04 05:57:26.481651', 21, 3);
INSERT INTO `sys_role_menu` VALUES (148, 9, '2023-02-19 06:37:50.287894', '2023-03-04 05:57:26.481651', 22, 3);
INSERT INTO `sys_role_menu` VALUES (149, 9, '2023-02-19 06:41:21.991088', '2023-02-19 14:43:04.319852', 1, 5);
INSERT INTO `sys_role_menu` VALUES (150, 9, '2023-02-19 06:41:21.995526', '2023-02-19 14:43:04.319852', 6, 5);
INSERT INTO `sys_role_menu` VALUES (151, 9, '2023-02-19 06:41:22.000950', '2023-02-19 14:43:04.319852', 7, 5);
INSERT INTO `sys_role_menu` VALUES (152, 9, '2023-02-19 06:43:04.323074', '2023-02-19 06:44:50.451576', 1, 5);
INSERT INTO `sys_role_menu` VALUES (153, 9, '2023-02-19 06:43:04.327896', '2023-02-19 06:44:50.451576', 6, 5);
INSERT INTO `sys_role_menu` VALUES (154, 9, '2023-02-19 06:43:04.332596', '2023-02-19 06:44:50.451576', 7, 5);
INSERT INTO `sys_role_menu` VALUES (155, 9, '2023-02-19 06:44:50.456348', '2023-02-19 14:47:58.540908', 1, 5);
INSERT INTO `sys_role_menu` VALUES (156, 9, '2023-02-19 06:44:50.461398', '2023-02-19 14:47:58.540908', 6, 5);
INSERT INTO `sys_role_menu` VALUES (157, 9, '2023-02-19 06:44:50.467141', '2023-02-19 14:47:58.540908', 7, 5);
INSERT INTO `sys_role_menu` VALUES (158, 9, '2023-02-19 06:47:58.544261', '2023-02-19 14:49:56.514499', 1, 5);
INSERT INTO `sys_role_menu` VALUES (159, 9, '2023-02-19 06:47:58.550565', '2023-02-19 14:49:56.514499', 6, 5);
INSERT INTO `sys_role_menu` VALUES (160, 9, '2023-02-19 06:47:58.555078', '2023-02-19 14:49:56.514499', 7, 5);
INSERT INTO `sys_role_menu` VALUES (161, 9, '2023-02-19 06:49:56.518837', '2023-02-19 06:50:10.640166', 1, 5);
INSERT INTO `sys_role_menu` VALUES (162, 9, '2023-02-19 06:49:56.523180', '2023-02-19 06:50:10.640166', 6, 5);
INSERT INTO `sys_role_menu` VALUES (163, 9, '2023-02-19 06:49:56.528663', '2023-02-19 06:50:10.640166', 7, 5);
INSERT INTO `sys_role_menu` VALUES (164, 9, '2023-02-19 06:50:10.644113', '2023-02-19 14:50:17.378041', 7, 5);
INSERT INTO `sys_role_menu` VALUES (165, 9, '2023-02-19 06:50:17.383820', '2023-02-19 06:54:04.287691', 7, 5);
INSERT INTO `sys_role_menu` VALUES (166, 9, '2023-02-19 06:54:04.290978', '2023-02-19 14:54:37.685060', 7, 5);
INSERT INTO `sys_role_menu` VALUES (167, 9, '2023-02-19 06:54:04.294926', '2023-02-19 14:54:37.685060', 3, 5);
INSERT INTO `sys_role_menu` VALUES (168, 9, '2023-02-19 06:54:04.301853', '2023-02-19 14:54:37.685060', 2, 5);
INSERT INTO `sys_role_menu` VALUES (169, 9, '2023-02-19 06:54:37.688928', '2023-02-19 06:55:54.645079', 7, 5);
INSERT INTO `sys_role_menu` VALUES (170, 9, '2023-02-19 06:54:37.692752', '2023-02-19 06:55:54.645079', 3, 5);
INSERT INTO `sys_role_menu` VALUES (171, 9, '2023-02-19 06:54:37.697660', '2023-02-19 06:55:54.645079', 2, 5);
INSERT INTO `sys_role_menu` VALUES (172, 1, '2023-02-19 06:55:54.650521', '2023-02-19 06:55:54.650531', 7, 5);
INSERT INTO `sys_role_menu` VALUES (173, 1, '2023-02-19 06:55:54.653964', '2023-02-19 06:55:54.653972', 3, 5);
INSERT INTO `sys_role_menu` VALUES (174, 1, '2023-02-19 06:55:54.656912', '2023-02-19 06:55:54.656918', 2, 5);
INSERT INTO `sys_role_menu` VALUES (175, 9, '2023-02-19 07:23:59.744826', '2023-03-04 05:58:20.129839', 6, 4);
INSERT INTO `sys_role_menu` VALUES (176, 9, '2023-02-19 07:23:59.748702', '2023-03-04 05:58:20.129839', 1, 4);
INSERT INTO `sys_role_menu` VALUES (177, 9, '2023-02-19 07:23:59.753166', '2023-03-04 05:58:20.129839', 3, 4);
INSERT INTO `sys_role_menu` VALUES (178, 9, '2023-02-19 07:23:59.759083', '2023-03-04 05:58:20.129839', 7, 4);
INSERT INTO `sys_role_menu` VALUES (179, 9, '2023-02-19 07:23:59.766462', '2023-03-04 05:58:20.129839', 8, 4);
INSERT INTO `sys_role_menu` VALUES (180, 9, '2023-02-19 07:23:59.771943', '2023-03-04 05:58:20.129839', 9, 4);
INSERT INTO `sys_role_menu` VALUES (181, 9, '2023-02-19 07:23:59.778868', '2023-03-04 05:58:20.129839', 10, 4);
INSERT INTO `sys_role_menu` VALUES (182, 9, '2023-02-19 07:23:59.785594', '2023-03-04 05:58:20.129839', 11, 4);
INSERT INTO `sys_role_menu` VALUES (183, 9, '2023-02-19 07:23:59.791267', '2023-03-04 05:58:20.129839', 12, 4);
INSERT INTO `sys_role_menu` VALUES (184, 9, '2023-02-19 07:23:59.799233', '2023-03-04 05:58:20.129839', 22, 4);
INSERT INTO `sys_role_menu` VALUES (185, 9, '2023-02-19 07:23:59.807597', '2023-03-04 05:58:20.129839', 5, 4);
INSERT INTO `sys_role_menu` VALUES (186, 9, '2023-02-19 07:23:59.818508', '2023-03-04 05:58:20.129839', 2, 4);
INSERT INTO `sys_role_menu` VALUES (187, 1, '2023-03-04 05:49:33.280690', '2023-03-04 05:49:33.280700', 6, 1);
INSERT INTO `sys_role_menu` VALUES (188, 1, '2023-03-04 05:49:33.286317', '2023-03-04 05:49:33.286333', 7, 1);
INSERT INTO `sys_role_menu` VALUES (189, 1, '2023-03-04 05:49:33.290755', '2023-03-04 05:49:33.290761', 4, 1);
INSERT INTO `sys_role_menu` VALUES (190, 1, '2023-03-04 05:49:33.296297', '2023-03-04 05:49:33.296305', 20, 1);
INSERT INTO `sys_role_menu` VALUES (191, 1, '2023-03-04 05:49:33.300863', '2023-03-04 05:49:33.300870', 13, 1);
INSERT INTO `sys_role_menu` VALUES (192, 1, '2023-03-04 05:49:33.304482', '2023-03-04 05:49:33.304488', 14, 1);
INSERT INTO `sys_role_menu` VALUES (193, 1, '2023-03-04 05:49:33.308283', '2023-03-04 05:49:33.308289', 15, 1);
INSERT INTO `sys_role_menu` VALUES (194, 1, '2023-03-04 05:49:33.313309', '2023-03-04 05:49:33.313320', 16, 1);
INSERT INTO `sys_role_menu` VALUES (195, 1, '2023-03-04 05:49:33.318051', '2023-03-04 05:49:33.318062', 17, 1);
INSERT INTO `sys_role_menu` VALUES (196, 1, '2023-03-04 05:49:33.323303', '2023-03-04 05:49:33.323313', 18, 1);
INSERT INTO `sys_role_menu` VALUES (197, 1, '2023-03-04 05:49:33.329036', '2023-03-04 05:49:33.329048', 1, 1);
INSERT INTO `sys_role_menu` VALUES (198, 1, '2023-03-04 05:49:33.335405', '2023-03-04 05:49:33.335455', 2, 1);
INSERT INTO `sys_role_menu` VALUES (199, 1, '2023-03-04 05:49:33.342566', '2023-03-04 05:49:33.342591', 3, 1);
INSERT INTO `sys_role_menu` VALUES (200, 1, '2023-03-04 05:49:33.352019', '2023-03-04 05:49:33.352041', 5, 1);
INSERT INTO `sys_role_menu` VALUES (201, 1, '2023-03-04 05:49:33.358018', '2023-03-04 05:49:33.358146', 8, 1);
INSERT INTO `sys_role_menu` VALUES (202, 1, '2023-03-04 05:49:33.365789', '2023-03-04 05:49:33.365811', 9, 1);
INSERT INTO `sys_role_menu` VALUES (203, 1, '2023-03-04 05:49:33.372965', '2023-03-04 05:49:33.372988', 10, 1);
INSERT INTO `sys_role_menu` VALUES (204, 1, '2023-03-04 05:49:33.380711', '2023-03-04 05:49:33.380721', 11, 1);
INSERT INTO `sys_role_menu` VALUES (205, 1, '2023-03-04 05:49:33.386406', '2023-03-04 05:49:33.386415', 12, 1);
INSERT INTO `sys_role_menu` VALUES (206, 1, '2023-03-04 05:49:33.393141', '2023-03-04 05:49:33.393150', 19, 1);
INSERT INTO `sys_role_menu` VALUES (207, 1, '2023-03-04 05:49:33.401365', '2023-03-04 05:49:33.401373', 21, 1);
INSERT INTO `sys_role_menu` VALUES (208, 1, '2023-03-04 05:49:33.407369', '2023-03-04 05:49:33.407377', 22, 1);
INSERT INTO `sys_role_menu` VALUES (209, 1, '2023-03-04 05:57:26.492311', '2023-03-04 05:57:26.492335', 19, 3);
INSERT INTO `sys_role_menu` VALUES (210, 1, '2023-03-04 05:57:26.499415', '2023-03-04 05:57:26.499432', 20, 3);
INSERT INTO `sys_role_menu` VALUES (211, 1, '2023-03-04 05:57:26.503355', '2023-03-04 05:57:26.503376', 21, 3);
INSERT INTO `sys_role_menu` VALUES (212, 1, '2023-03-04 05:57:26.509037', '2023-03-04 05:57:26.509057', 22, 3);
INSERT INTO `sys_role_menu` VALUES (213, 1, '2023-03-04 05:57:26.512858', '2023-03-04 05:57:26.512874', 5, 3);
INSERT INTO `sys_role_menu` VALUES (214, 1, '2023-03-04 05:57:26.516745', '2023-03-04 05:57:26.516758', 2, 3);
INSERT INTO `sys_role_menu` VALUES (215, 1, '2023-03-04 05:58:20.133684', '2023-03-04 05:58:20.133707', 4, 4);
INSERT INTO `sys_role_menu` VALUES (216, 1, '2023-03-04 05:58:20.141968', '2023-03-04 05:58:20.141990', 13, 4);
INSERT INTO `sys_role_menu` VALUES (217, 1, '2023-03-04 05:58:20.146914', '2023-03-04 05:58:20.146932', 14, 4);
INSERT INTO `sys_role_menu` VALUES (218, 1, '2023-03-04 05:58:20.155683', '2023-03-04 05:58:20.155705', 15, 4);
INSERT INTO `sys_role_menu` VALUES (219, 1, '2023-03-04 05:58:20.162194', '2023-03-04 05:58:20.162217', 16, 4);
INSERT INTO `sys_role_menu` VALUES (220, 1, '2023-03-04 05:58:20.170965', '2023-03-04 05:58:20.170974', 17, 4);
INSERT INTO `sys_role_menu` VALUES (221, 1, '2023-03-04 05:58:20.177855', '2023-03-04 05:58:20.177862', 18, 4);
INSERT INTO `sys_role_menu` VALUES (222, 1, '2023-03-04 05:58:20.182783', '2023-03-04 05:58:20.182791', 19, 4);
INSERT INTO `sys_role_menu` VALUES (223, 1, '2023-03-04 05:58:20.187708', '2023-03-04 05:58:20.187717', 5, 4);
INSERT INTO `sys_role_menu` VALUES (224, 1, '2023-03-04 05:58:20.191806', '2023-03-04 05:58:20.191821', 2, 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '状态 1有效 9 删除 5选中',
  `created` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modified` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `username` varchar(20) NOT NULL COMMENT '账号',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_sys_user_usernam_29caba` (`username`),
  KEY `idx_sys_user_nicknam_f5cda9` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (2, 1, '2022-12-17 05:06:16.075906', '2022-12-24 13:21:47.054752', 'admin', '$2b$12$0gPTL9S9KgPUdXqK.TCLe.igGTljtBPl7n5gttnqSyqHy6PqVDXTS', 'string');
INSERT INTO `sys_user` VALUES (4, 9, '2022-12-17 05:16:05.919654', '2023-02-18 19:23:12.868183', '233232', '$2b$12$0iIR1xd.dxFm1CZh43bLBu2fsfbOIlWR.zqkeMbFKUIhTJOJIjN3K', 'string');
INSERT INTO `sys_user` VALUES (5, 1, '2023-02-18 11:59:18.566010', '2023-02-18 11:59:18.566021', 'test', '$2b$12$GO1Mis47Ub24oA91pYsBfOA2L9D2I3QdQk7TrR7f8xyXvY/9gSWQe', '321');
INSERT INTO `sys_user` VALUES (6, 1, '2023-03-04 05:50:40.317245', '2023-03-04 13:54:45.154069', 'super', '$2b$12$uYh3dT2SbkQaq45t0HJcqe4mgcJa4Rbc/FbofPA2TgxkVK8kVVKBq', '超级管理员');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '状态 1有效 9 删除 5选中',
  `created` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `modified` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sys_user_sys_role_4cdf1232` (`role_id`),
  KEY `fk_sys_user_sys_user_cef66251` (`user_id`),
  CONSTRAINT `fk_sys_user_sys_role_4cdf1232` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sys_user_sys_user_cef66251` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 9, '2022-12-17 05:06:16.083647', '2023-02-18 19:58:48.400474', 1, 2);
INSERT INTO `sys_user_role` VALUES (2, 9, '2022-12-17 05:06:16.095970', '2023-02-18 19:58:48.400474', 3, 2);
INSERT INTO `sys_user_role` VALUES (3, 9, '2022-12-17 05:16:05.931054', '2022-12-17 05:20:45.741334', 1, 4);
INSERT INTO `sys_user_role` VALUES (4, 9, '2022-12-17 05:19:40.897182', '2022-12-17 05:20:45.741334', 3, 4);
INSERT INTO `sys_user_role` VALUES (5, 5, '2022-12-17 05:20:45.743451', '2022-12-17 05:20:45.743458', 3, 4);
INSERT INTO `sys_user_role` VALUES (6, 9, '2023-02-18 11:58:48.405183', '2023-02-19 14:36:04.446960', 1, 2);
INSERT INTO `sys_user_role` VALUES (7, 9, '2023-02-18 11:59:18.581720', '2023-02-18 20:00:02.812899', 1, 5);
INSERT INTO `sys_user_role` VALUES (8, 9, '2023-02-18 12:00:02.818492', '2023-02-18 20:16:28.962318', 1, 5);
INSERT INTO `sys_user_role` VALUES (9, 9, '2023-02-18 12:00:02.824665', '2023-02-18 20:16:28.962318', 3, 5);
INSERT INTO `sys_user_role` VALUES (10, 9, '2023-02-18 12:16:28.965393', '2023-02-19 05:44:59.354262', 3, 5);
INSERT INTO `sys_user_role` VALUES (11, 5, '2023-02-19 05:44:59.358944', '2023-02-19 05:44:59.358955', 3, 5);
INSERT INTO `sys_user_role` VALUES (12, 1, '2023-02-19 06:36:04.450608', '2023-03-04 13:59:00.026292', 1, 2);
INSERT INTO `sys_user_role` VALUES (13, 5, '2023-02-19 06:36:04.454342', '2023-03-04 05:59:00.034556', 4, 2);
INSERT INTO `sys_user_role` VALUES (14, 1, '2023-02-19 06:36:04.458189', '2023-02-19 06:36:04.458194', 3, 2);
INSERT INTO `sys_user_role` VALUES (15, 1, '2023-02-19 06:36:04.465878', '2023-02-19 06:36:04.465889', 5, 2);
INSERT INTO `sys_user_role` VALUES (16, 9, '2023-03-04 05:50:40.321454', '2023-03-04 13:58:36.603449', 1, 6);
INSERT INTO `sys_user_role` VALUES (17, 1, '2023-03-04 05:58:36.608096', '2023-03-04 05:59:48.750725', 1, 6);
INSERT INTO `sys_user_role` VALUES (18, 5, '2023-03-04 05:58:36.613380', '2023-03-04 14:04:34.995222', 3, 6);
INSERT INTO `sys_user_role` VALUES (19, 1, '2023-03-04 05:58:36.622256', '2023-03-04 06:04:34.983941', 4, 6);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
