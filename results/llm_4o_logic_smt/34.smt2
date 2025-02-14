(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsFallacious (BoundSet) Bool)
(declare-fun IsIncoherent (BoundSet) Bool)
(declare-fun IsIllogical (BoundSet) Bool)
(declare-fun IsInvalid (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsFallacious a) (and (IsIncoherent a) (IsIllogical a)))) (exists ((b BoundSet)) (IsInvalid b)))))
(check-sat)
(get-model)