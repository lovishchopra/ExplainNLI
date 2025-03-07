(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun GivesBreak (BoundSet BoundSet) Bool)
(declare-fun WalksOver (BoundSet BoundSet) Bool)
(declare-fun IsGiven (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (GivesBreak a b) (WalksOver c a))))) (exists ((b BoundSet)) (exists ((a BoundSet)) (and (GivesBreak a b) (not (IsGiven a b))))))))
(check-sat)
(get-model)