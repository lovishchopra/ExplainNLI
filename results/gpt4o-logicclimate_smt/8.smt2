(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ExhibitArrogance (BoundSet) Bool)
(declare-fun ExhibitZealotry (BoundSet) Bool)
(declare-fun IsLike (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (ExhibitArrogance a) (ExhibitZealotry a))) (exists ((d BoundSet)) (exists ((c BoundSet)) (IsLike c d))))))
(check-sat)
(get-model)