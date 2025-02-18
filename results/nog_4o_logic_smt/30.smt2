(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsImpressed (BoundSet BoundSet) Bool)
(declare-fun IsImpressive (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (IsImpressed b a))) (exists ((a BoundSet)) (IsImpressive a)))))
(check-sat)
(get-model)