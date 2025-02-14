(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun GaveMoneyToCharity (BoundSet BoundSet BoundSet) Bool)
(declare-fun IsGreedyMillionaire (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (not (GaveMoneyToCharity a c d)) (IsGreedyMillionaire a))))) (exists ((a BoundSet)) (IsGreedyMillionaire a)))))
(check-sat)
(get-model)