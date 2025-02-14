(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMadeUpOf (BoundSet BoundSet) Bool)
(declare-fun IsPerforming (BoundSet) Bool)
(declare-fun IsSinging (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsMadeUpOf a b) (IsPerforming a)))) (and (forall ((d BoundSet)) (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsSinging d) (IsMadeUpOf e f))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsPerforming g) (IsSinging h)))) (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsSinging i) (IsPerforming j))))))) (exists ((c BoundSet)) (IsSinging c)))))
(check-sat)
(get-model)