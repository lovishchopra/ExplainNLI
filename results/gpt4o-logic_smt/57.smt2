(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsHuge (BoundSet) Bool)
(declare-fun CanLiveWith (BoundSet) Bool)
(declare-fun IsCut (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsHuge a) (not (CanLiveWith a)))) (forall ((c BoundSet)) (forall ((d BoundSet)) (=> (IsHuge c) (IsCut d))))) (exists ((b BoundSet)) (IsCut b)))))
(check-sat)
(get-model)