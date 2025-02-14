(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun DoesNotBelieveIn (BoundSet BoundSet) Bool)
(declare-fun BurnsIn (BoundSet BoundSet) Bool)
(declare-fun MustBelieveIn (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (DoesNotBelieveIn a b) (BurnsIn a c))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (MustBelieveIn a b))))))
(check-sat)
(get-model)