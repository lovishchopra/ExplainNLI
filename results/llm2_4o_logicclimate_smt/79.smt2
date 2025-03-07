(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsReal (BoundSet) Bool)
(declare-fun WillFollow (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsReal a)) (exists ((b BoundSet)) (WillFollow b)))))
(check-sat)
(get-model)