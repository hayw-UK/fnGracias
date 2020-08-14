USE [tools] 
GO 

/****** Object:  UserDefinedFunction [dbo].[fnGracias]    Script Date: 23/07/2020 11:49:17 ******/ 
SET ANSI_NULLS ON 

GO 
SET QUOTED_IDENTIFIER ON 
GO 

ALTER FUNCTION [dbo].[fnGracias] (@input VARCHAR(255)) 
--CREATE FUNCTION dbo.fnGracias (@input VARCHAR(255)) 
RETURNS VARCHAR(255) 
AS BEGIN 

        declare @ForeignText nvarchar(255) 
        SET @ForeignText = @input  
/* 

-- example of fnGracias function usage 

SELECT tools.dbo.fnGracias ('LeitÃ£o, JosÃ© Gonzales ') 
SELECT tools.dbo.fnGracias ('Mrs Sarah Oâ€™Smith') 

-- Example 1 is a Latino person whose Spanish accent name is formatted wrong 
-- Example 2 is a O’-___ name has an apostrophe with a slant in it, as opposed to a regular vertical apostrophe. 


 */ 

--  3 letter incorrect chars must be listed first 

SET @ForeignText = REPLACE(@ForeignText, 'â€º', '›' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â‚¬', '€' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€š', '‚' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€ž', '„' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€¦', '…' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€°', '‰' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€¹', '‹' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€˜', '‘' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€™', '’' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€œ', '“' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€¢', '•' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€“', '–' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€”', '—' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€¡', '‡' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â„¢', '™' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å¡', 'š' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ë†', 'ˆ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ëœ', '˜' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€', '”' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å’', 'Œ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å½', 'Ž' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'â€', '†' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Æ’', 'ƒ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å“', 'œ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å¾', 'ž' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Å¸', 'Ÿ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¡', '¡' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¢', '¢' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â£', '£' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¤', '¤' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¥', '¥' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¦', '¦' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â§', '§' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¨', '¨' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â©', '©' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Âª', 'ª' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â«', '«' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¬', '¬' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â­', '­' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â®', '®' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¯', '¯' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â°', '°' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â±', '±' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â²', '²' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â³', '³' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â´', '´' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Âµ', 'µ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¶', '¶' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â·', '·' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¸', '¸' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¹', '¹' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Âº', 'º' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â»', '»' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¼', '¼' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â½', '½' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¾', '¾' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Â¿', '¿' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã€', 'À' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã‚', 'Â' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãƒ', 'Ã' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã„', 'Ä' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã…', 'Å' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã†', 'Æ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã‡', 'Ç' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãˆ', 'È' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã‰', 'É' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'ÃŠ', 'Ê' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã‹', 'Ë' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'ÃŒ', 'Ì' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'ÃŽ', 'Î' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã‘', 'Ñ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã’', 'Ò' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã“', 'Ó' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã”', 'Ô' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã•', 'Õ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã–', 'Ö' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã—', '×' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã˜', 'Ø' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã™', 'Ù' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãš', 'Ú' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã›', 'Û' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãœ', 'Ü' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãž', 'Þ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'ÃŸ', 'ß' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¡', 'á' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¢', 'â' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã£', 'ã' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¤', 'ä' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¥', 'å' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¦', 'æ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã§', 'ç' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¨', 'è' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã©', 'é' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãª', 'ê' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã«', 'ë' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¬', 'ì' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã­', 'í' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã®', 'î' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¯', 'ï' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã°', 'ð' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã±', 'ñ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã²', 'ò' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã³', 'ó' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã´', 'ô' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãµ', 'õ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¶', 'ö' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã·', '÷' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¸', 'ø' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¹', 'ù' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ãº', 'ú' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã»', 'û' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¼', 'ü' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã½', 'ý' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¾', 'þ' COLLATE Latin1_General_CS_AS ) 

SET @ForeignText = REPLACE(@ForeignText, 'Ã¿', 'ÿ' COLLATE Latin1_General_CS_AS ) 

  

RETURN @ForeignText 

  

END 
