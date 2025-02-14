(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Ruined (BoundSet BoundSet) Bool)
(declare-fun CausedBy (BoundSet BoundSet) Bool)
(declare-fun Left (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (Ruined a b))) (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (Ruined d e) (CausedBy d e))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (Left c b) (CausedBy a b))))))))
(check-sat)
(get-model)