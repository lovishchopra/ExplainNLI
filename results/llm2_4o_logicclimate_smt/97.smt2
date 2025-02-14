(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun DoesNotExist (BoundSet) Bool)
(declare-fun CannotBeMeaningfullyAveraged (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (DoesNotExist a)) (forall ((c BoundSet)) (forall ((d BoundSet)) (=> (CannotBeMeaningfullyAveraged c) (DoesNotExist d))))) (exists ((b BoundSet)) (CannotBeMeaningfullyAveraged b)))))
(check-sat)
(get-model)