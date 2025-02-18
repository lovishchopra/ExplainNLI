(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun BuysStocks (BoundSet) Bool)
(declare-fun RisksMoney (BoundSet) Bool)
(declare-fun HasLittleChanceOfMakingBigProfit (BoundSet) Bool)
(declare-fun BetsOnHorseRacing (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (BuysStocks a) (and (RisksMoney a) (HasLittleChanceOfMakingBigProfit a)))) (and (forall ((g BoundSet)) (=> (BuysStocks g) (RisksMoney g))) (forall ((h BoundSet)) (=> (BuysStocks h) (HasLittleChanceOfMakingBigProfit h))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (and (BuysStocks a) (BetsOnHorseRacing e)))))))
(check-sat)
(get-model)