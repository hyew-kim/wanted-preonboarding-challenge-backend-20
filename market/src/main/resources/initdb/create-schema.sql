CREATE DATABASE IF NOT EXISTS `market`;
USE market;
CREATE USER IF NOT EXISTS `wanted`@`localhost` IDENTIFIED BY 'backend';
CREATE USER `wanted`@`%` IDENTIFIED BY 'backend';
GRANT all privileges ON *.* TO `wanted`@`localhost`;
GRANT all privileges ON *.* TO `wanted`@`%`;

-- CREATE TABLE `purchase_order`
-- (
--     `order_id`     BINARY(16) default (uuid_to_bin(uuid())) NOT NULL COMMENT '주문번호',
--     `name`         VARCHAR(255)                             NOT NULL COMMENT '주문자명',
--     `phone_number` VARCHAR(255)                             NOT NULL COMMENT '주문자 휴대전화번호',
--     `order_state`  VARCHAR(255)                             NOT NULL COMMENT '주문상태',
--     `payment_id`   VARCHAR(255)                             NULL COMMENT '결제정보',
--     `total_price`  INT                                      NOT NULL COMMENT '상품 가격 * 주문 수량',
--     `created_at`   DATETIME   DEFAULT NOW()                 NOT NULL,
--     `updated_at`   DATETIME   DEFAULT NOW()                 NOT NUll,
--     PRIMARY KEY (order_id)
-- );