CREATE DATABASE crypto;
GO

USE crypto;
GO
--tabela para guardar as criptos
CREATE TABLE crypto_prices
(
  id INT IDENTITY(1,1) PRIMARY KEY,
  coin_id VARCHAR(50),
  price_usd DECIMAL(18,8),
  market_cap DECIMAL(18,2),
  volume_24h DECIMAL(18,2),
  collected_at DATETIME
);
--historio para os preços da cripto
CREATE TABLE crypto_price_history
(
  id INT IDENTITY(1,1) PRIMARY KEY,
  coin_id VARCHAR(50) NOT NULL,
  symbol VARCHAR(10) NOT NULL,
  price_usd DECIMAL(18, 8) NOT NULL,
  market_cap_usd DECIMAL(18, 2) NULL,
  volume_24h_usd DECIMAL(18, 2) NULL,
  collected_at DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);
