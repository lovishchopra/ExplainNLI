(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun Maneuvers (BoundSet BoundSet) Bool)
(declare-fun IsAtTop (BoundSet) Bool)
(declare-fun IsOnRamp (BoundSet BoundSet) Bool)
(declare-fun Rides (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (IsYoung c) (and (Maneuvers c b) (and (IsAtTop b) (IsOnRamp b d))))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (Rides f g) (IsYoung h))))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (Maneuvers i j) (Rides k j))))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (Rides l m) (Maneuvers n m))))) (and (forall ((p BoundSet)) (forall ((o BoundSet)) (=> (Rides o p) (IsAtTop o)))) (forall ((s BoundSet)) (forall ((q BoundSet)) (forall ((r BoundSet)) (=> (Rides q r) (IsOnRamp q s)))))))))) (exists ((b BoundSet)) (Rides b b)))))
(check-sat)
(get-model)