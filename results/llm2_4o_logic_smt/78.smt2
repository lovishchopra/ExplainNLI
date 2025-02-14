(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSaved (BoundSet) Bool)
(declare-fun IsUsedToBuy (BoundSet BoundSet) Bool)
(declare-fun WillTake (BoundSet BoundSet) Bool)
(declare-fun ForTheRestOf (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSaved a) (IsUsedToBuy a b)))) (exists ((e BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (WillTake c d) (ForTheRestOf c e))))))))
(check-sat)
(get-model)