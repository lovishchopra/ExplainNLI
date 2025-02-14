(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ForecastedIceFree (BoundSet BoundSet) Bool)
(declare-fun IncreasedBy (BoundSet BoundSet) Bool)
(declare-fun PolarBearNumbersRising (BoundSet) Bool)
(declare-fun NoTempIncrease (BoundSet BoundSet BoundSet) Bool)
(declare-fun NotExperiencing (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((f BoundSet)) (exists ((e BoundSet)) (exists ((h BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((g BoundSet)) (exists ((b BoundSet)) (and (ForecastedIceFree a b) (and (IncreasedBy c d) (and (PolarBearNumbersRising e) (NoTempIncrease f g h)))))))))))) (exists ((a BoundSet)) (exists ((i BoundSet)) (not (NotExperiencing a i)))))))
(check-sat)
(get-model)