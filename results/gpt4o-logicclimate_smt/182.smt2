(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Smokes (BoundSet) Bool)
(declare-fun LeansAgainst (BoundSet BoundSet) Bool)
(declare-fun HasFlier (BoundSet BoundSet) Bool)
(declare-fun Against (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (Smokes a) (and (LeansAgainst a b) (HasFlier b c)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (exists ((f BoundSet)) (and (Smokes d) (and (Against d e) (HasFlier e f)))))))))
(check-sat)
(get-model)