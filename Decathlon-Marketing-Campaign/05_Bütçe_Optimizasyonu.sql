USE DecathlonMarketing;
GO

-- 05_Budget_Optimization
-- Channel performance and budget allocation recommendation

WITH ChannelPerformance AS
(
    SELECT
        channel,
        SUM(spend_tl) AS Spend_TL,
        SUM(purchase) AS Purchases,
        SUM(revenue_tl) AS Revenue_TL,

        ROUND(
            SUM(revenue_tl) / NULLIF(SUM(spend_tl), 0),
            2
        ) AS ROAS,

        ROUND(
            SUM(spend_tl) / NULLIF(SUM(purchase), 0),
            2
        ) AS CPA_TL

    FROM dbo.CampaignPerformance
    GROUP BY channel
),

BudgetRecommendation AS
(
    SELECT
        channel,
        Spend_TL,
        Purchases,
        Revenue_TL,
        ROAS,
        CPA_TL,

        CASE
            WHEN ROAS >= 1.00 THEN 'INCREASE'
            WHEN ROAS >= 0.50 THEN 'MAINTAIN / TEST'
            ELSE 'DECREASE'
        END AS Recommendation

    FROM ChannelPerformance
)

SELECT
    channel,
    Spend_TL,
    Purchases,
    Revenue_TL,
    ROAS,
    CPA_TL,
    Recommendation
FROM BudgetRecommendation
ORDER BY ROAS DESC;
