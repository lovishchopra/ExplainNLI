(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasHeart (BoundSet) Bool)
(declare-fun WillMakeDecision (BoundSet BoundSet) Bool)
(declare-fun IsRightDecision (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (HasHeart a)) (exists ((b BoundSet)) (exists ((a BoundSet)) (and (WillMakeDecision a b) (IsRightDecision b)))))))
(check-sat)
(get-model)