(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWrestling (BoundSet) Bool)
(declare-fun IsOnGround (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsWrestling a) (IsOnGround a))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsOnGround d) (IsWrestling e)))) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsWrestling f) (IsOnGround g)))))) (exists ((c BoundSet)) (IsWrestling c)))))
(check-sat)
(get-model)