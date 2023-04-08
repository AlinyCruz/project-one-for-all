SELECT
    MIN(plan.preco_plano) AS faturamento_minimo,
    MAX(plan.preco_plano) AS faturamento_maximo,
    ROUND(AVG(plan.preco_plano), 2) AS faturamento_medio,
    SUM(plan.preco_plano) AS faturamento_total

FROM SpotifyClone.planos AS plan

INNER JOIN SpotifyClone.usuarios AS usu
	ON plan.plano_id = usu.plano_id;
  