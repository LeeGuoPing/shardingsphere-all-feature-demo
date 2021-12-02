CREATE DATABASE master;

USE master;

CREATE TABLE `t_user`
(
    `id`           bigint NOT NULL AUTO_INCREMENT,
    `name`         varchar(50) DEFAULT NULL,
    `sharding_key` int         DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO t_user(`name`, `sharding_key`) VALUE ('ShardingSphere-write-node', 1);

CREATE DATABASE slave;

USE slave;

CREATE TABLE `t_user`
(
    `id`           bigint NOT NULL AUTO_INCREMENT,
    `name`         varchar(50) DEFAULT NULL,
    `sharding_key` int         DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO t_user(`name`, `sharding_key`) VALUE ('ShardingSphere-read-node', 1);

