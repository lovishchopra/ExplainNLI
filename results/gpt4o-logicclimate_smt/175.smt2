(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInOffice (BoundSet) Bool)
(declare-fun HasComputers (BoundSet) Bool)
(declare-fun HasProjectorScreen (BoundSet) Bool)
(declare-fun IsInRoom (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (and (IsInOffice c) (and (HasComputers c) (HasProjectorScreen c)))) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (HasComputers g) (IsInRoom h))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsInRoom a) (IsInRoom b)))))))
(check-sat)
(get-model)