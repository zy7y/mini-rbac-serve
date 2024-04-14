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

 Date: 14/04/2024 17:11:17
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of aerich
-- ----------------------------
BEGIN;
INSERT INTO `aerich` VALUES (2, '1_20221217130453_update_password_len.py', 'models', '{\"models.Menu\": {\"app\": \"models\", \"name\": \"models.Menu\", \"table\": \"sys_menu\", \"indexes\": [[\"type\", \"name\"]], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"name\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"icon\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"icon\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": \"菜单图标\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"path\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"path\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"菜单url\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"type\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"type\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"菜单类型 0目录 1组件 2按钮 3数据\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"component\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"component\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"组件地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"pid\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"pid\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": -2147483648, \"le\": 2147483647}, \"description\": \"父id\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"identifier\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"identifier\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 30}, \"description\": \"权限标识 user:add\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(30)\"}}, {\"name\": \"api\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"api\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"接口地址\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"method\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"method\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"接口请求方式\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}], \"description\": \"菜单表\", \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Role\": {\"app\": \"models\", \"name\": \"models.Role\", \"table\": \"sys_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_name\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"role_name\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 10}, \"description\": \"角色名称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(10)\"}}, {\"name\": \"desc\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": true, \"db_column\": \"desc\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 60}, \"description\": \"描述\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(60)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}, {\"name\": \"sys_role_menus\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.RoleMenu\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.User\": {\"app\": \"models\", \"name\": \"models.User\", \"table\": \"sys_user\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"username\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"username\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"账号\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"password\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"password\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 128}, \"description\": \"密码\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(128)\"}}, {\"name\": \"nickname\", \"unique\": false, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"nickname\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 20}, \"description\": \"昵称\", \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(20)\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [{\"name\": \"sys_user_roles\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"field_type\": \"BackwardFKRelation\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.UserRole\", \"db_constraint\": true}], \"backward_o2o_fields\": []}, \"models.Aerich\": {\"app\": \"models\", \"name\": \"models.Aerich\", \"table\": \"aerich\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"version\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"version\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 255}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(255)\"}}, {\"name\": \"app\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"app\", \"docstring\": null, \"generated\": false, \"field_type\": \"CharField\", \"constraints\": {\"max_length\": 100}, \"description\": null, \"python_type\": \"str\", \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"content\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"content\", \"docstring\": null, \"generated\": false, \"field_type\": \"JSONField\", \"constraints\": {}, \"description\": null, \"python_type\": \"Union[dict, list]\", \"db_field_types\": {\"\": \"JSON\", \"mssql\": \"NVARCHAR(MAX)\", \"oracle\": \"NCLOB\", \"postgres\": \"JSONB\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.RoleMenu\": {\"app\": \"models\", \"name\": \"models.RoleMenu\", \"table\": \"sys_role_menu\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}, {\"name\": \"menu\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"menu_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Menu\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"menu_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"menu_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}, \"models.UserRole\": {\"app\": \"models\", \"name\": \"models.UserRole\", \"table\": \"sys_user_role\", \"indexes\": [], \"abstract\": false, \"pk_field\": {\"name\": \"id\", \"unique\": true, \"default\": null, \"indexed\": true, \"nullable\": false, \"db_column\": \"id\", \"docstring\": null, \"generated\": true, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": \"主键\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, \"docstring\": null, \"fk_fields\": [{\"name\": \"user\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"user_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.User\", \"db_constraint\": true}, {\"name\": \"role\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"docstring\": null, \"generated\": false, \"on_delete\": \"CASCADE\", \"raw_field\": \"role_id\", \"field_type\": \"ForeignKeyFieldInstance\", \"constraints\": {}, \"description\": null, \"python_type\": \"models.Role\", \"db_constraint\": true}], \"m2m_fields\": [], \"o2o_fields\": [], \"data_fields\": [{\"name\": \"status\", \"unique\": false, \"default\": 1, \"indexed\": false, \"nullable\": false, \"db_column\": \"status\", \"docstring\": null, \"generated\": false, \"field_type\": \"SmallIntField\", \"constraints\": {\"ge\": -32768, \"le\": 32767}, \"description\": \"状态 1有效 9 删除 5选中\", \"python_type\": \"int\", \"db_field_types\": {\"\": \"SMALLINT\"}}, {\"name\": \"created\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": false, \"nullable\": true, \"db_column\": \"created\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"创建时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"modified\", \"unique\": false, \"default\": null, \"indexed\": false, \"auto_now\": true, \"nullable\": true, \"db_column\": \"modified\", \"docstring\": null, \"generated\": false, \"field_type\": \"DatetimeField\", \"constraints\": {\"readOnly\": true}, \"description\": \"更新时间\", \"python_type\": \"datetime.datetime\", \"auto_now_add\": true, \"db_field_types\": {\"\": \"TIMESTAMP\", \"mssql\": \"DATETIME2\", \"mysql\": \"DATETIME(6)\", \"oracle\": \"TIMESTAMP WITH TIME ZONE\", \"postgres\": \"TIMESTAMPTZ\"}}, {\"name\": \"role_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"role_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}, {\"name\": \"user_id\", \"unique\": false, \"default\": null, \"indexed\": false, \"nullable\": false, \"db_column\": \"user_id\", \"docstring\": null, \"generated\": false, \"field_type\": \"IntField\", \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"description\": null, \"python_type\": \"int\", \"db_field_types\": {\"\": \"INT\"}}], \"description\": null, \"unique_together\": [], \"backward_fk_fields\": [], \"backward_o2o_fields\": []}}');
INSERT INTO `aerich` VALUES (3, '1223', 'gg', '{\"GG\": \"1\"}');
INSERT INTO `aerich` VALUES (4, 'string', 'string', '{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单表';

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
INSERT INTO `sys_menu` VALUES (7, 1, '2022-12-10 08:00:03.599549', '2023-03-12 17:18:55.375348', '用户详情', NULL, NULL, 3, NULL, 3, 'user:get', '/user/{id}', 'GET');
INSERT INTO `sys_menu` VALUES (8, 1, '2022-12-10 08:00:03.606295', '2022-12-10 08:00:03.606303', '用户列表', NULL, NULL, 3, NULL, 3, NULL, '/user', 'GET');
INSERT INTO `sys_menu` VALUES (9, 1, '2022-12-10 08:00:03.613573', '2023-03-12 17:35:53.105784', '用户查询', NULL, NULL, 2, NULL, 3, 'user:query', NULL, 'POST');
INSERT INTO `sys_menu` VALUES (10, 1, '2022-12-10 08:00:03.620625', '2022-12-10 08:00:03.620633', '用户新增', NULL, NULL, 2, NULL, 3, 'user:create', '/user', 'POST');
INSERT INTO `sys_menu` VALUES (11, 1, '2022-12-10 08:00:03.627710', '2023-03-12 17:19:09.460440', '用户删除', NULL, NULL, 2, NULL, 3, 'user:delete', '/user/{id}', 'DELETE');
INSERT INTO `sys_menu` VALUES (12, 1, '2022-12-10 08:00:03.634962', '2023-03-12 17:19:13.158394', '用户更新', NULL, NULL, 2, NULL, 3, 'user:update', '/user/{id}', 'PUT');
INSERT INTO `sys_menu` VALUES (13, 1, '2022-12-10 08:00:03.641954', '2023-03-12 17:22:26.057119', '查询角色拥有权限', NULL, NULL, 3, NULL, 4, NULL, '/role/{id}', 'GET');
INSERT INTO `sys_menu` VALUES (14, 1, '2022-12-10 08:00:03.649696', '2022-12-10 08:00:03.649703', '角色列表', NULL, NULL, 3, NULL, 4, NULL, '/role', 'GET');
INSERT INTO `sys_menu` VALUES (15, 1, '2022-12-10 08:00:03.657341', '2023-03-12 17:35:59.778368', '角色查询', NULL, NULL, 2, NULL, 4, 'role:query', NULL, 'POST');
INSERT INTO `sys_menu` VALUES (16, 1, '2022-12-10 08:00:03.663807', '2022-12-10 08:00:03.663815', '角色新增', NULL, NULL, 2, NULL, 4, 'role:create', '/role', 'POST');
INSERT INTO `sys_menu` VALUES (17, 1, '2022-12-10 08:00:03.669734', '2023-03-12 17:19:19.075055', '角色删除', NULL, NULL, 2, NULL, 4, 'role:delete', '/role/{id}', 'DELETE');
INSERT INTO `sys_menu` VALUES (18, 1, '2022-12-10 08:00:03.677116', '2023-03-12 17:19:22.455479', '角色更新', NULL, NULL, 2, NULL, 4, 'role:update', '/role/{id}', 'PUT');
INSERT INTO `sys_menu` VALUES (19, 1, '2022-12-10 08:00:03.684101', '2022-12-10 16:38:48.650686', '菜单列表', NULL, NULL, 3, NULL, 5, NULL, '/menu', 'GET');
INSERT INTO `sys_menu` VALUES (20, 1, '2022-12-10 08:00:03.691507', '2022-12-10 16:38:45.581031', '菜单新增', NULL, NULL, 2, NULL, 5, 'menu:create', '/menu', 'POST');
INSERT INTO `sys_menu` VALUES (21, 1, '2022-12-10 08:00:03.699054', '2023-03-12 17:19:25.774981', '菜单更新', NULL, NULL, 2, NULL, 5, 'menu:update', '/menu/{id}', 'PUT');
INSERT INTO `sys_menu` VALUES (22, 1, '2022-12-10 08:00:03.706160', '2023-03-12 17:19:32.158910', '菜单删除', NULL, NULL, 2, NULL, 5, 'menu:delete', '/menu/{id}', 'DELETE');
INSERT INTO `sys_menu` VALUES (23, 1, '2023-03-12 17:29:46.927591', '2023-03-12 17:58:11.729678', '切换角色', NULL, NULL, 2, NULL, 3, 'role:change', '/user/role/{id}', 'PATCH');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (6, 1, '2023-03-12 09:55:10.638942', '2024-04-14 17:08:03.408496', '超级管理员', '123');
INSERT INTO `sys_role` VALUES (7, 1, '2023-12-23 02:12:17.837823', NULL, 'ggbond', 'ggblaile');
INSERT INTO `sys_role` VALUES (8, 1, '2023-12-25 16:01:07.315000', '2023-12-25 16:01:07.315000', 'string', 'string');
INSERT INTO `sys_role` VALUES (10, 1, '2023-12-26 15:39:45.109000', '2023-12-26 15:39:45.109000', 'ggbond', 'zzx');
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (248, 1, '2023-03-12 09:55:10.645431', '2023-03-12 09:55:10.645440', 1, 6);
INSERT INTO `sys_role_menu` VALUES (249, 1, '2023-03-12 09:55:10.649878', '2023-03-12 09:55:10.649884', 6, 6);
INSERT INTO `sys_role_menu` VALUES (250, 1, '2023-03-12 09:55:10.653208', '2023-03-12 09:55:10.653214', 8, 6);
INSERT INTO `sys_role_menu` VALUES (251, 1, '2023-03-12 09:55:10.655687', '2023-03-12 09:55:10.655696', 3, 6);
INSERT INTO `sys_role_menu` VALUES (252, 1, '2023-03-12 09:55:10.659366', '2023-03-12 09:55:10.659377', 2, 6);
INSERT INTO `sys_role_menu` VALUES (253, 1, '2024-04-14 17:08:37.639526', '2024-04-14 17:08:37.639526', 4, 6);
INSERT INTO `sys_role_menu` VALUES (254, 1, '2024-04-14 17:08:45.744207', '2024-04-14 17:08:45.744207', 5, 6);
INSERT INTO `sys_role_menu` VALUES (255, 1, '2024-04-14 17:08:51.354825', '2024-04-14 17:08:51.354825', 7, 6);
INSERT INTO `sys_role_menu` VALUES (256, 1, '2024-04-14 17:08:57.306332', '2024-04-14 17:09:08.776318', 9, 6);
INSERT INTO `sys_role_menu` VALUES (257, 1, '2024-04-14 17:09:14.397803', '2024-04-14 17:09:14.397803', 10, 6);
INSERT INTO `sys_role_menu` VALUES (258, 1, '2024-04-14 17:09:20.559903', '2024-04-14 17:09:20.559903', 11, 6);
INSERT INTO `sys_role_menu` VALUES (259, 1, '2024-04-14 17:09:25.668760', '2024-04-14 17:09:25.668760', 12, 6);
INSERT INTO `sys_role_menu` VALUES (260, 1, '2024-04-14 17:09:55.702998', '2024-04-14 17:09:55.702998', 13, 6);
INSERT INTO `sys_role_menu` VALUES (261, 1, '2024-04-14 17:10:01.475224', '2024-04-14 17:10:01.475224', 14, 6);
INSERT INTO `sys_role_menu` VALUES (262, 1, '2024-04-14 17:10:06.705571', '2024-04-14 17:10:06.705571', 15, 6);
INSERT INTO `sys_role_menu` VALUES (263, 1, '2024-04-14 17:10:11.719993', '2024-04-14 17:10:11.719993', 17, 6);
INSERT INTO `sys_role_menu` VALUES (264, 1, '2024-04-14 17:10:17.785701', '2024-04-14 17:10:17.785701', 18, 6);
INSERT INTO `sys_role_menu` VALUES (265, 1, '2024-04-14 17:10:22.848723', '2024-04-14 17:10:22.848723', 19, 6);
INSERT INTO `sys_role_menu` VALUES (266, 1, '2024-04-14 17:10:28.164426', '2024-04-14 17:10:28.164426', 20, 6);
INSERT INTO `sys_role_menu` VALUES (267, 1, '2024-04-14 17:10:32.551820', '2024-04-14 17:10:32.551820', 21, 6);
INSERT INTO `sys_role_menu` VALUES (268, 1, '2024-04-14 17:10:37.182571', '2024-04-14 17:10:37.182571', 22, 6);
INSERT INTO `sys_role_menu` VALUES (269, 1, '2024-04-14 17:10:47.352119', '2024-04-14 17:10:47.352119', 23, 6);
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
INSERT INTO `sys_user` VALUES (1, 1, '2023-03-04 05:50:40.317245', '2023-03-04 13:54:45.154069', 'admin', '$2b$12$uYh3dT2SbkQaq45t0HJcqe4mgcJa4Rbc/FbofPA2TgxkVK8kVVKBq', '超级管理员');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (21, 5, '2023-03-12 09:55:19.184095', '2023-03-12 18:09:21.756700', 6, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
