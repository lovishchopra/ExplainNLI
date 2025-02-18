(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBlond (BoundSet) Bool)
(declare-fun CrossedRoad (BoundSet) Bool)
(declare-fun SawShoeSale (BoundSet) Bool)
(declare-fun CrossesRoad (BoundSet) Bool)
(declare-fun ForShoeSales (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsBlond a) (and (CrossedRoad a) (SawShoeSale b))))) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (CrossedRoad g) (CrossesRoad h))))) (exists ((d BoundSet)) (and (IsBlond d) (and (CrossesRoad d) (ForShoeSales d)))))))
(check-sat)
(get-model)