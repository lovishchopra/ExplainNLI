(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun PredictDoom (BoundSet) Bool)
(declare-fun ShouldNotTrust (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (PredictDoom a)) (and (forall ((b BoundSet)) (=> (PredictDoom b) (ShouldNotTrust b))) (forall ((c BoundSet)) (=> (ShouldNotTrust c) (PredictDoom c))))) (exists ((a BoundSet)) (ShouldNotTrust a)))))
(check-sat)
(get-model)